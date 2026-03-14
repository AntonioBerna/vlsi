`timescale 1ns / 1ps

`ifndef STOP_NS
`define STOP_NS 200
`endif

module alarm_asm_tb;
  reg  clk;
  reg  rst;
  reg  input_bit;
  wire alarm;

  localparam integer CYCLES = 12;

  reg input_sequence[CYCLES];
  reg expected_alarm[CYCLES];

  integer i;

  alarm_asm uut (
      .clk(clk),
      .rst(rst),
      .input_bit(input_bit),
      .alarm(alarm)
  );

  initial begin
    clk = 1'b0;
    forever #5 clk = ~clk;
  end

  initial begin
    $dumpfile("alarm_asm.vcd");
    $dumpvars(0, clk, rst, input_bit, alarm);
    $dumpvars(0, uut.state, uut.next_state);

    input_sequence[0] = 1'b0;
    input_sequence[1] = 1'b1;
    input_sequence[2] = 1'b1;
    input_sequence[3] = 1'b1;
    input_sequence[4] = 1'b1;
    input_sequence[5] = 1'b0;
    input_sequence[6] = 1'b1;
    input_sequence[7] = 1'b1;
    input_sequence[8] = 1'b1;
    input_sequence[9] = 1'b1;
    input_sequence[10] = 1'b1;
    input_sequence[11] = 1'b0;

    expected_alarm[0] = 1'b0;
    expected_alarm[1] = 1'b0;
    expected_alarm[2] = 1'b0;
    expected_alarm[3] = 1'b0;
    expected_alarm[4] = 1'b1;
    expected_alarm[5] = 1'b0;
    expected_alarm[6] = 1'b0;
    expected_alarm[7] = 1'b0;
    expected_alarm[8] = 1'b0;
    expected_alarm[9] = 1'b1;
    expected_alarm[10] = 1'b0;
    expected_alarm[11] = 1'b0;

    rst = 1'b1;
    input_bit = 1'b0;

    wait (clk === 1'b1);
    #1;
    if (alarm !== 1'b0) begin
      $display("ALARM must be 0 during reset");
      $finish;
    end

    rst = 1'b0;

    for (i = 0; i < CYCLES; i = i + 1) begin
      input_bit = input_sequence[i];
      @(posedge clk);
      #1;
      if (alarm !== expected_alarm[i]) begin
        $display("Mismatch at cycle %0d: alarm=%b expected=%b", i, alarm, expected_alarm[i]);
        $finish;
      end
    end

    $display("FSM test completed successfully");
  end

  initial begin
    #(`STOP_NS);
    $finish;
  end
endmodule
