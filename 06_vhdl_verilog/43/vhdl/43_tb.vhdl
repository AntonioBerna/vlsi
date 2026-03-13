library ieee;
use ieee.std_logic_1164.all;

entity clock_signal_50_tb is
end clock_signal_50_tb;

architecture testbench of clock_signal_50_tb is
  signal clk: std_logic;
begin
  uut: entity work.clock_signal_50(generate_clock_behavior)
    port map (
      clk => clk
    );

  stimulus: process
  begin
    wait for 1 ns;
    assert clk = '0' report "Clock must start at 0" severity error;

    wait for 5 ns;
    assert clk = '1' report "Clock must be 1 after 5 ns" severity error;

    wait for 5 ns;
    assert clk = '0' report "Clock must be 0 after 10 ns" severity error;

    wait for 5 ns;
    assert clk = '1' report "Clock must be 1 after 15 ns" severity error;

    report "Clock test completed successfully" severity note;
    wait;
  end process;
end testbench;