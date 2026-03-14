`timescale 1ns / 1ps

`ifndef STOP_NS
`define STOP_NS 30
`endif

module clock_signal_50_tb;
  wire clk;

  clock_signal_50 uut (.clk(clk));

  initial begin
    $dumpfile("clock_signal_50.vcd");
    $dumpvars(0, clock_signal_50_tb);

    #1;
    if (clk !== 1'b0) begin
      $display("Clock must start at 0");
      $finish;
    end

    #5;
    if (clk !== 1'b1) begin
      $display("Clock must be 1 after 5 ns");
      $finish;
    end

    #5;
    if (clk !== 1'b0) begin
      $display("Clock must be 0 after 10 ns");
      $finish;
    end

    #5;
    if (clk !== 1'b1) begin
      $display("Clock must be 1 after 15 ns");
      $finish;
    end

    $display("Clock test completed successfully");
    $finish;
  end

  initial begin
    #(`STOP_NS);
    $finish;
  end
endmodule
