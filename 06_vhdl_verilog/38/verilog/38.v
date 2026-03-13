// NOR gate
module NOR_logic_gate_dataflow (
  input a, b,
  output c
);
  assign c = ~(a | b);
endmodule

module NOR_logic_gate_behavioral (
  input a, b,
  output reg c
);
  always @(*) begin
    if (a == 0 && b == 0)
      c = 1;
    else
      c = 0;
  end
endmodule

module NOR_logic_gate_conditional (
  input a, b,
  output c
);
  assign c = (a == 0 && b == 0) ? 1 : 0;
endmodule

// AND gate
module AND_logic_gate_dataflow (
  input a, b,
  output c
);
  assign c = a & b;
endmodule

module AND_logic_gate_behavioral (
  input a, b,
  output reg c
);
  always @(*) begin
    if (a == 1 && b == 1)
      c = 1;
    else
      c = 0;
  end
endmodule

module AND_logic_gate_conditional (
  input a, b,
  output c
);
  assign c = (a == 1 && b == 1) ? 1 : 0;
endmodule

// OR gate
module OR_logic_gate_dataflow (
  input a, b,
  output c
);
  assign c = a | b;
endmodule

module OR_logic_gate_behavioral (
  input a, b,
  output reg c
);
  always @(*) begin
    if (a == 1 || b == 1)
      c = 1;
    else
      c = 0;
  end
endmodule

module OR_logic_gate_conditional (
  input a, b,
  output c
);
  assign c = (a == 1 || b == 1) ? 1 : 0;
endmodule

// XOR gate
module XOR_logic_gate_dataflow (
  input a, b,
  output c
);
  assign c = a ^ b;
endmodule

module XOR_logic_gate_behavioral (
  input a, b,
  output reg c
);
  always @(*) begin
    if (a != b)
      c = 1;
    else
      c = 0;
  end
endmodule

module XOR_logic_gate_conditional (
  input a, b,
  output c
);
  assign c = (a != b) ? 1 : 0;
endmodule
