`timescale 1ns / 1ps

// For 100 MHz clock signal we have a period of:
// T = 1 / f = 1 / 100 MHz = 10 ns
// But the specification required a 50% duty cycle.
// That means that the clock signal should be high for 5 ns and low for 5 ns.
module clock_signal_50 (
    output reg clk
);

  initial begin
    clk = 1'b0;
  end

  always #5 clk = ~clk;

endmodule
