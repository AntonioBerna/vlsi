-- NOR gate testbench

entity nor_tb is
end entity nor_tb;

architecture testbench of nor_tb is

  signal a, b          : bit;
  signal c_dataflow    : bit;
  signal c_behavioral  : bit;
  signal c_conditional : bit;

  component nor_logic_gate is
    port (
      a : in    bit;
      b : in    bit;
      c : out   bit
    );
  end component nor_logic_gate;

  for uut_dataflow : nor_logic_gate use entity work.nor_logic_gate(nor_dataflow);
  for uut_behavioral : nor_logic_gate use entity work.nor_logic_gate(nor_behavioral);
  for uut_conditional : nor_logic_gate use entity work.nor_logic_gate(nor_conditional);

begin

  uut_dataflow : component nor_logic_gate
    port map (
      a => a,
      b => b,
      c => c_dataflow
    );

  uut_behavioral : component nor_logic_gate
    port map (
      a => a,
      b => b,
      c => c_behavioral
    );

  uut_conditional : component nor_logic_gate
    port map (
      a => a,
      b => b,
      c => c_conditional
    );

  stimulus : process is
  begin

    a <= '0';
    b <= '0';
    wait for 10 ns;
    assert c_dataflow = '1'
      report "Dataflow error: 0 NOR 0 must be 1"
      severity error;
    assert c_behavioral = '1'
      report "Behavioral error: 0 NOR 0 must be 1"
      severity error;
    assert c_conditional = '1'
      report "Conditional error: 0 NOR 0 must be 1"
      severity error;

    a <= '0';
    b <= '1';
    wait for 10 ns;
    assert c_dataflow = '0'
      report "Dataflow error: 0 NOR 1 must be 0"
      severity error;
    assert c_behavioral = '0'
      report "Behavioral error: 0 NOR 1 must be 0"
      severity error;
    assert c_conditional = '0'
      report "Conditional error: 0 NOR 1 must be 0"
      severity error;

    a <= '1';
    b <= '0';
    wait for 10 ns;
    assert c_dataflow = '0'
      report "Dataflow error: 1 NOR 0 must be 0"
      severity error;
    assert c_behavioral = '0'
      report "Behavioral error: 1 NOR 0 must be 0"
      severity error;
    assert c_conditional = '0'
      report "Conditional error: 1 NOR 0 must be 0"
      severity error;

    a <= '1';
    b <= '1';
    wait for 10 ns;
    assert c_dataflow = '0'
      report "Dataflow error: 1 NOR 1 must be 0"
      severity error;
    assert c_behavioral = '0'
      report "Behavioral error: 1 NOR 1 must be 0"
      severity error;
    assert c_conditional = '0'
      report "Conditional error: 1 NOR 1 must be 0"
      severity error;

    report "NOR test (dataflow + behavioral + conditional) completed successfully"
      severity note;
    wait;

  end process stimulus;

end architecture testbench;

-- AND gate testbench

entity and_tb is
end entity and_tb;

architecture testbench of and_tb is

  signal a, b          : bit;
  signal c_dataflow    : bit;
  signal c_behavioral  : bit;
  signal c_conditional : bit;

  component and_logic_gate is
    port (
      a : in    bit;
      b : in    bit;
      c : out   bit
    );
  end component and_logic_gate;

  for uut_dataflow : and_logic_gate use entity work.and_logic_gate(and_dataflow);
  for uut_behavioral : and_logic_gate use entity work.and_logic_gate(and_behavioral);
  for uut_conditional : and_logic_gate use entity work.and_logic_gate(and_conditional);

begin

  uut_dataflow : component and_logic_gate
    port map (
      a => a,
      b => b,
      c => c_dataflow
    );

  uut_behavioral : component and_logic_gate
    port map (
      a => a,
      b => b,
      c => c_behavioral
    );

  uut_conditional : component and_logic_gate
    port map (
      a => a,
      b => b,
      c => c_conditional
    );

  stimulus : process is
  begin

    a <= '0';
    b <= '0';
    wait for 10 ns;
    assert c_dataflow = '0'
      report "Dataflow error: 0 AND 0 must be 0"
      severity error;
    assert c_behavioral = '0'
      report "Behavioral error: 0 AND 0 must be 0"
      severity error;
    assert c_conditional = '0'
      report "Conditional error: 0 AND 0 must be 0"
      severity error;

    a <= '0';
    b <= '1';
    wait for 10 ns;
    assert c_dataflow = '0'
      report "Dataflow error: 0 AND 1 must be 0"
      severity error;
    assert c_behavioral = '0'
      report "Behavioral error: 0 AND 1 must be 0"
      severity error;
    assert c_conditional = '0'
      report "Conditional error: 0 AND 1 must be 0"
      severity error;

    a <= '1';
    b <= '0';
    wait for 10 ns;
    assert c_dataflow = '0'
      report "Dataflow error: 1 AND 0 must be 0"
      severity error;
    assert c_behavioral = '0'
      report "Behavioral error: 1 AND 0 must be 0"
      severity error;
    assert c_conditional = '0'
      report "Conditional error: 1 AND 0 must be 0"
      severity error;

    a <= '1';
    b <= '1';
    wait for 10 ns;
    assert c_dataflow = '1'
      report "Dataflow error: 1 AND 1 must be 1"
      severity error;
    assert c_behavioral = '1'
      report "Behavioral error: 1 AND 1 must be 1"
      severity error;
    assert c_conditional = '1'
      report "Conditional error: 1 AND 1 must be 1"
      severity error;

    report "AND test (dataflow + behavioral + conditional) completed successfully"
      severity note;
    wait;

  end process stimulus;

end architecture testbench;

-- OR gate testbench

entity or_tb is
end entity or_tb;

architecture testbench of or_tb is

  signal a, b          : bit;
  signal c_dataflow    : bit;
  signal c_behavioral  : bit;
  signal c_conditional : bit;

  component or_logic_gate is
    port (
      a : in    bit;
      b : in    bit;
      c : out   bit
    );
  end component or_logic_gate;

  for uut_dataflow : or_logic_gate use entity work.or_logic_gate(or_dataflow);
  for uut_behavioral : or_logic_gate use entity work.or_logic_gate(or_behavioral);
  for uut_conditional : or_logic_gate use entity work.or_logic_gate(or_conditional);

begin

  uut_dataflow : component or_logic_gate
    port map (
      a => a,
      b => b,
      c => c_dataflow
    );

  uut_behavioral : component or_logic_gate
    port map (
      a => a,
      b => b,
      c => c_behavioral
    );

  uut_conditional : component or_logic_gate
    port map (
      a => a,
      b => b,
      c => c_conditional
    );

  stimulus : process is
  begin

    a <= '0';
    b <= '0';
    wait for 10 ns;
    assert c_dataflow = '0'
      report "Dataflow error: 0 OR 0 must be 0"
      severity error;
    assert c_behavioral = '0'
      report "Behavioral error: 0 OR 0 must be 0"
      severity error;
    assert c_conditional = '0'
      report "Conditional error: 0 OR 0 must be 0"
      severity error;

    a <= '0';
    b <= '1';
    wait for 10 ns;
    assert c_dataflow = '1'
      report "Dataflow error: 0 OR 1 must be 1"
      severity error;
    assert c_behavioral = '1'
      report "Behavioral error: 0 OR 1 must be 1"
      severity error;
    assert c_conditional = '1'
      report "Conditional error: 0 OR 1 must be 1"
      severity error;

    a <= '1';
    b <= '0';
    wait for 10 ns;
    assert c_dataflow = '1'
      report "Dataflow error: 1 OR 0 must be 1"
      severity error;
    assert c_behavioral = '1'
      report "Behavioral error: 1 OR 0 must be 1"
      severity error;
    assert c_conditional = '1'
      report "Conditional error: 1 OR 0 must be 1"
      severity error;

    a <= '1';
    b <= '1';
    wait for 10 ns;
    assert c_dataflow = '1'
      report "Dataflow error: 1 OR 1 must be 1"
      severity error;
    assert c_behavioral = '1'
      report "Behavioral error: 1 OR 1 must be 1"
      severity error;
    assert c_conditional = '1'
      report "Conditional error: 1 OR 1 must be 1"
      severity error;

    report "OR test (dataflow + behavioral + conditional) completed successfully"
      severity note;
    wait;

  end process stimulus;

end architecture testbench;

-- XOR gate testbench

entity xor_tb is
end entity xor_tb;

architecture testbench of xor_tb is

  signal a, b          : bit;
  signal c_dataflow    : bit;
  signal c_behavioral  : bit;
  signal c_conditional : bit;

  component xor_logic_gate is
    port (
      a : in    bit;
      b : in    bit;
      c : out   bit
    );
  end component xor_logic_gate;

  for uut_dataflow : xor_logic_gate use entity work.xor_logic_gate(xor_dataflow);
  for uut_behavioral : xor_logic_gate use entity work.xor_logic_gate(xor_behavioral);
  for uut_conditional : xor_logic_gate use entity work.xor_logic_gate(xor_conditional);

begin

  uut_dataflow : component xor_logic_gate
    port map (
      a => a,
      b => b,
      c => c_dataflow
    );

  uut_behavioral : component xor_logic_gate
    port map (
      a => a,
      b => b,
      c => c_behavioral
    );

  uut_conditional : component xor_logic_gate
    port map (
      a => a,
      b => b,
      c => c_conditional
    );

  stimulus : process is
  begin

    a <= '0';
    b <= '0';
    wait for 10 ns;
    assert c_dataflow = '0'
      report "Dataflow error: 0 XOR 0 must be 0"
      severity error;
    assert c_behavioral = '0'
      report "Behavioral error: 0 XOR 0 must be 0"
      severity error;
    assert c_conditional = '0'
      report "Conditional error: 0 XOR 0 must be 0"
      severity error;

    a <= '0';
    b <= '1';
    wait for 10 ns;
    assert c_dataflow = '1'
      report "Dataflow error: 0 XOR 1 must be 1"
      severity error;
    assert c_behavioral = '1'
      report "Behavioral error: 0 XOR 1 must be 1"
      severity error;
    assert c_conditional = '1'
      report "Conditional error: 0 XOR 1 must be 1"
      severity error;

    a <= '1';
    b <= '0';
    wait for 10 ns;
    assert c_dataflow = '1'
      report "Dataflow error: 1 XOR 0 must be 1"
      severity error;
    assert c_behavioral = '1'
      report "Behavioral error: 1 XOR 0 must be 1"
      severity error;
    assert c_conditional = '1'
      report "Conditional error: 1 XOR 0 must be 1"
      severity error;

    a <= '1';
    b <= '1';
    wait for 10 ns;
    assert c_dataflow = '0'
      report "Dataflow error: 1 XOR 1 must be 0"
      severity error;
    assert c_behavioral = '0'
      report "Behavioral error: 1 XOR 1 must be 0"
      severity error;
    assert c_conditional = '0'
      report "Conditional error: 1 XOR 1 must be 0"
      severity error;

    report "XOR test (dataflow + behavioral + conditional) completed successfully"
      severity note;
    wait;

  end process stimulus;

end architecture testbench;
