library ieee;
use ieee.std_logic_1164.all;

entity clock_signal_50 is
  port (
    clk: out std_logic
  );
end clock_signal_50;

-- For 100 MHz clock signal we have a period of:
-- T = 1 / f = 1 / 100 MHz = 10 ns
-- But the specification required a 50% duty cycle.
-- That means that the clock signal should be high for 5 ns and low for 5 ns.
architecture generate_clock_behavior of clock_signal_50 is
begin
    process
    begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;
end generate_clock_behavior;
