`timescale 1ns / 1ps

// NOR gate testbench
module NOR_tb;
  reg a, b;
  wire c_dataflow, c_behavioral, c_conditional;

  NOR_logic_gate_dataflow uut_dataflow (
      .a(a),
      .b(b),
      .c(c_dataflow)
  );

  NOR_logic_gate_behavioral uut_behavioral (
      .a(a),
      .b(b),
      .c(c_behavioral)
  );

  NOR_logic_gate_conditional uut_conditional (
      .a(a),
      .b(b),
      .c(c_conditional)
  );

  initial begin
    $dumpfile("nor.vcd");
    $dumpvars(0, NOR_tb);

    a = 0;
    b = 0;
    #10;
    if (c_dataflow !== 1'b1) begin
      $display("Dataflow error: 0 NOR 0 must be 1");
      $finish;
    end
    if (c_behavioral !== 1'b1) begin
      $display("Behavioral error: 0 NOR 0 must be 1");
      $finish;
    end
    if (c_conditional !== 1'b1) begin
      $display("Conditional error: 0 NOR 0 must be 1");
      $finish;
    end

    a = 0;
    b = 1;
    #10;
    if (c_dataflow !== 1'b0) begin
      $display("Dataflow error: 0 NOR 1 must be 0");
      $finish;
    end
    if (c_behavioral !== 1'b0) begin
      $display("Behavioral error: 0 NOR 1 must be 0");
      $finish;
    end
    if (c_conditional !== 1'b0) begin
      $display("Conditional error: 0 NOR 1 must be 0");
      $finish;
    end

    a = 1;
    b = 0;
    #10;
    if (c_dataflow !== 1'b0) begin
      $display("Dataflow error: 1 NOR 0 must be 0");
      $finish;
    end
    if (c_behavioral !== 1'b0) begin
      $display("Behavioral error: 1 NOR 0 must be 0");
      $finish;
    end
    if (c_conditional !== 1'b0) begin
      $display("Conditional error: 1 NOR 0 must be 0");
      $finish;
    end

    a = 1;
    b = 1;
    #10;
    if (c_dataflow !== 1'b0) begin
      $display("Dataflow error: 1 NOR 1 must be 0");
      $finish;
    end
    if (c_behavioral !== 1'b0) begin
      $display("Behavioral error: 1 NOR 1 must be 0");
      $finish;
    end
    if (c_conditional !== 1'b0) begin
      $display("Conditional error: 1 NOR 1 must be 0");
      $finish;
    end

    $display("NOR test (dataflow + behavioral + conditional) completed successfully");
    $finish;
  end
endmodule

// AND gate testbench
module AND_tb;
  reg a, b;
  wire c_dataflow, c_behavioral, c_conditional;

  AND_logic_gate_dataflow uut_dataflow (
      .a(a),
      .b(b),
      .c(c_dataflow)
  );

  AND_logic_gate_behavioral uut_behavioral (
      .a(a),
      .b(b),
      .c(c_behavioral)
  );

  AND_logic_gate_conditional uut_conditional (
      .a(a),
      .b(b),
      .c(c_conditional)
  );

  initial begin
    $dumpfile("and.vcd");
    $dumpvars(0, AND_tb);

    a = 0;
    b = 0;
    #10;
    if (c_dataflow !== 1'b0) begin
      $display("Dataflow error: 0 AND 0 must be 0");
      $finish;
    end
    if (c_behavioral !== 1'b0) begin
      $display("Behavioral error: 0 AND 0 must be 0");
      $finish;
    end
    if (c_conditional !== 1'b0) begin
      $display("Conditional error: 0 AND 0 must be 0");
      $finish;
    end

    a = 0;
    b = 1;
    #10;
    if (c_dataflow !== 1'b0) begin
      $display("Dataflow error: 0 AND 1 must be 0");
      $finish;
    end
    if (c_behavioral !== 1'b0) begin
      $display("Behavioral error: 0 AND 1 must be 0");
      $finish;
    end
    if (c_conditional !== 1'b0) begin
      $display("Conditional error: 0 AND 1 must be 0");
      $finish;
    end

    a = 1;
    b = 0;
    #10;
    if (c_dataflow !== 1'b0) begin
      $display("Dataflow error: 1 AND 0 must be 0");
      $finish;
    end
    if (c_behavioral !== 1'b0) begin
      $display("Behavioral error: 1 AND 0 must be 0");
      $finish;
    end
    if (c_conditional !== 1'b0) begin
      $display("Conditional error: 1 AND 0 must be 0");
      $finish;
    end

    a = 1;
    b = 1;
    #10;
    if (c_dataflow !== 1'b1) begin
      $display("Dataflow error: 1 AND 1 must be 1");
      $finish;
    end
    if (c_behavioral !== 1'b1) begin
      $display("Behavioral error: 1 AND 1 must be 1");
      $finish;
    end
    if (c_conditional !== 1'b1) begin
      $display("Conditional error: 1 AND 1 must be 1");
      $finish;
    end

    $display("AND test (dataflow + behavioral + conditional) completed successfully");
    $finish;
  end
endmodule

// OR gate testbench
module OR_tb;
  reg a, b;
  wire c_dataflow, c_behavioral, c_conditional;

  OR_logic_gate_dataflow uut_dataflow (
      .a(a),
      .b(b),
      .c(c_dataflow)
  );

  OR_logic_gate_behavioral uut_behavioral (
      .a(a),
      .b(b),
      .c(c_behavioral)
  );

  OR_logic_gate_conditional uut_conditional (
      .a(a),
      .b(b),
      .c(c_conditional)
  );

  initial begin
    $dumpfile("or.vcd");
    $dumpvars(0, OR_tb);

    a = 0;
    b = 0;
    #10;
    if (c_dataflow !== 1'b0) begin
      $display("Dataflow error: 0 OR 0 must be 0");
      $finish;
    end
    if (c_behavioral !== 1'b0) begin
      $display("Behavioral error: 0 OR 0 must be 0");
      $finish;
    end
    if (c_conditional !== 1'b0) begin
      $display("Conditional error: 0 OR 0 must be 0");
      $finish;
    end

    a = 0;
    b = 1;
    #10;
    if (c_dataflow !== 1'b1) begin
      $display("Dataflow error: 0 OR 1 must be 1");
      $finish;
    end
    if (c_behavioral !== 1'b1) begin
      $display("Behavioral error: 0 OR 1 must be 1");
      $finish;
    end
    if (c_conditional !== 1'b1) begin
      $display("Conditional error: 0 OR 1 must be 1");
      $finish;
    end

    a = 1;
    b = 0;
    #10;
    if (c_dataflow !== 1'b1) begin
      $display("Dataflow error: 1 OR 0 must be 1");
      $finish;
    end
    if (c_behavioral !== 1'b1) begin
      $display("Behavioral error: 1 OR 0 must be 1");
      $finish;
    end
    if (c_conditional !== 1'b1) begin
      $display("Conditional error: 1 OR 0 must be 1");
      $finish;
    end

    a = 1;
    b = 1;
    #10;
    if (c_dataflow !== 1'b1) begin
      $display("Dataflow error: 1 OR 1 must be 1");
      $finish;
    end
    if (c_behavioral !== 1'b1) begin
      $display("Behavioral error: 1 OR 1 must be 1");
      $finish;
    end
    if (c_conditional !== 1'b1) begin
      $display("Conditional error: 1 OR 1 must be 1");
      $finish;
    end

    $display("OR test (dataflow + behavioral + conditional) completed successfully");
    $finish;
  end
endmodule

// XOR gate testbench
module XOR_tb;
  reg a, b;
  wire c_dataflow, c_behavioral, c_conditional;

  XOR_logic_gate_dataflow uut_dataflow (
      .a(a),
      .b(b),
      .c(c_dataflow)
  );

  XOR_logic_gate_behavioral uut_behavioral (
      .a(a),
      .b(b),
      .c(c_behavioral)
  );

  XOR_logic_gate_conditional uut_conditional (
      .a(a),
      .b(b),
      .c(c_conditional)
  );

  initial begin
    $dumpfile("xor.vcd");
    $dumpvars(0, XOR_tb);

    a = 0;
    b = 0;
    #10;
    if (c_dataflow !== 1'b0) begin
      $display("Dataflow error: 0 XOR 0 must be 0");
      $finish;
    end
    if (c_behavioral !== 1'b0) begin
      $display("Behavioral error: 0 XOR 0 must be 0");
      $finish;
    end
    if (c_conditional !== 1'b0) begin
      $display("Conditional error: 0 XOR 0 must be 0");
      $finish;
    end

    a = 0;
    b = 1;
    #10;
    if (c_dataflow !== 1'b1) begin
      $display("Dataflow error: 0 XOR 1 must be 1");
      $finish;
    end
    if (c_behavioral !== 1'b1) begin
      $display("Behavioral error: 0 XOR 1 must be 1");
      $finish;
    end
    if (c_conditional !== 1'b1) begin
      $display("Conditional error: 0 XOR 1 must be 1");
      $finish;
    end

    a = 1;
    b = 0;
    #10;
    if (c_dataflow !== 1'b1) begin
      $display("Dataflow error: 1 XOR 0 must be 1");
      $finish;
    end
    if (c_behavioral !== 1'b1) begin
      $display("Behavioral error: 1 XOR 0 must be 1");
      $finish;
    end
    if (c_conditional !== 1'b1) begin
      $display("Conditional error: 1 XOR 0 must be 1");
      $finish;
    end

    a = 1;
    b = 1;
    #10;
    if (c_dataflow !== 1'b0) begin
      $display("Dataflow error: 1 XOR 1 must be 0");
      $finish;
    end
    if (c_behavioral !== 1'b0) begin
      $display("Behavioral error: 1 XOR 1 must be 0");
      $finish;
    end
    if (c_conditional !== 1'b0) begin
      $display("Conditional error: 1 XOR 1 must be 0");
      $finish;
    end

    $display("XOR test (dataflow + behavioral + conditional) completed successfully");
    $finish;
  end
endmodule
