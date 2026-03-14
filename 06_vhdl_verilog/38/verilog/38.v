// NOR gate
module NOR_logic_gate_dataflow (
    input  a,
    b,
    output c
);
  assign c = ~(a | b);
endmodule

module NOR_logic_gate_behavioral (
    input a,
    b,
    output reg c
);
  always_comb begin
    if (a == 1'b0 && b == 1'b0) begin
      c = 1'b1;
    end else begin
      c = 1'b0;
    end
  end
endmodule

module NOR_logic_gate_conditional (
    input  a,
    b,
    output c
);
  assign c = (a == 1'b0 && b == 1'b0) ? 1'b1 : 1'b0;
endmodule

// AND gate
module AND_logic_gate_dataflow (
    input  a,
    b,
    output c
);
  assign c = a & b;
endmodule

module AND_logic_gate_behavioral (
    input a,
    b,
    output reg c
);
  always_comb begin
    if (a == 1'b1 && b == 1'b1) begin
      c = 1'b1;
    end else begin
      c = 1'b0;
    end
  end
endmodule

module AND_logic_gate_conditional (
    input  a,
    b,
    output c
);
  assign c = (a == 1'b1 && b == 1'b1) ? 1'b1 : 1'b0;
endmodule

// OR gate
module OR_logic_gate_dataflow (
    input  a,
    b,
    output c
);
  assign c = a | b;
endmodule

module OR_logic_gate_behavioral (
    input a,
    b,
    output reg c
);
  always_comb begin
    if (a == 1'b1 || b == 1'b1) begin
      c = 1'b1;
    end else begin
      c = 1'b0;
    end
  end
endmodule

module OR_logic_gate_conditional (
    input  a,
    b,
    output c
);
  assign c = (a == 1'b1 || b == 1'b1) ? 1'b1 : 1'b0;
endmodule

// XOR gate
module XOR_logic_gate_dataflow (
    input  a,
    b,
    output c
);
  assign c = a ^ b;
endmodule

module XOR_logic_gate_behavioral (
    input a,
    b,
    output reg c
);
  always_comb begin
    if (a != b) begin
      c = 1'b1;
    end else begin
      c = 1'b0;
    end
  end
endmodule

module XOR_logic_gate_conditional (
    input  a,
    b,
    output c
);
  assign c = (a != b) ? 1'b1 : 1'b0;
endmodule
