library ieee;
  use ieee.std_logic_1164.all;

entity alarm_asm_tb is
end entity alarm_asm_tb;

architecture testbench of alarm_asm_tb is

  signal clk   : std_logic;
  signal rst   : std_logic;
  signal input : std_logic;
  signal alarm : std_logic;

  component alarm_asm is
    port (
      clk   : in    std_logic;
      rst   : in    std_logic;
      input : in    std_logic;
      alarm : out   std_logic
    );
  end component alarm_asm;

  for uut : alarm_asm use entity work.alarm_asm(rtl);

  type sl_array_t is array (natural range <>) of std_logic;

  constant input_sequence : sl_array_t :=
  (
    '0',
    '1',
    '1',
    '1',
    '1',
    '0',
    '1',
    '1',
    '1',
    '1',
    '1',
    '0'
  );

  -- With the implemented Moore FSM, ALARM is asserted when entering S4.
  constant expected_alarm : sl_array_t :=
  (
    '0',
    '0',
    '0',
    '0',
    '1',
    '0',
    '0',
    '0',
    '0',
    '1',
    '0',
    '0'
  );

begin

  uut : component alarm_asm
    port map (
      clk   => clk,
      rst   => rst,
      input => input,
      alarm => alarm
    );

  clk_process : process is
  begin

    while true loop

      clk <= '0';
      wait for 5 ns;
      clk <= '1';
      wait for 5 ns;

    end loop;

  end process clk_process;

  stimulus : process is
  begin

    rst   <= '1';
    input <= '0';

    -- Keep reset active for one rising edge.
    wait for 2 ns;
    wait until rising_edge(clk);
    wait for 1 ns;
    assert alarm = '0'
      report "ALARM must be 0 during reset"
      severity error;

    rst <= '0';

    for i in input_sequence'range loop

      input <= input_sequence(i);
      wait until rising_edge(clk);
      wait for 1 ns;

      assert alarm = expected_alarm(i)
        report "Mismatch at cycle " & integer'image(i)
        severity error;

    end loop;

    report "FSM test completed successfully"
      severity note;
    wait;

  end process stimulus;

end architecture testbench;
