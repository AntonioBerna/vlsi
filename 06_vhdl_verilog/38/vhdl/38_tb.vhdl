-- NOR gate testbench
entity NOR_tb is
end NOR_tb;

architecture testbench of NOR_tb is
  signal a, b: bit;
  signal c_dataflow, c_behavioral, c_conditional: bit;
begin
  uut_dataflow: entity work.NOR_logic_gate(NOR_dataflow)
    port map (
      a => a,
      b => b,
      c => c_dataflow
    );

  uut_behavioral: entity work.NOR_logic_gate(NOR_behavioral)
    port map (
      a => a,
      b => b,
      c => c_behavioral
    );
  
  uut_conditional: entity work.NOR_logic_gate(NOR_conditional)
    port map (
      a => a,
      b => b,
      c => c_conditional
    );

  stimulus: process
  begin
    a <= '0'; b <= '0'; wait for 10 ns;
    assert c_dataflow = '1' report "Dataflow error: 0 NOR 0 must be 1" severity error;
    assert c_behavioral = '1' report "Behavioral error: 0 NOR 0 must be 1" severity error;
    assert c_conditional = '1' report "Conditional error: 0 NOR 0 must be 1" severity error;
    
    a <= '0'; b <= '1'; wait for 10 ns;
    assert c_dataflow = '0' report "Dataflow error: 0 NOR 1 must be 0" severity error;
    assert c_behavioral = '0' report "Behavioral error: 0 NOR 1 must be 0" severity error;
    assert c_conditional = '0' report "Conditional error: 0 NOR 1 must be 0" severity error;
    
    a <= '1'; b <= '0'; wait for 10 ns;
    assert c_dataflow = '0' report "Dataflow error: 1 NOR 0 must be 0" severity error;
    assert c_behavioral = '0' report "Behavioral error: 1 NOR 0 must be 0" severity error;
    assert c_conditional = '0' report "Conditional error: 1 NOR 0 must be 0" severity error;
    
    a <= '1'; b <= '1'; wait for 10 ns;
    assert c_dataflow = '0' report "Dataflow error: 1 NOR 1 must be 0" severity error;
    assert c_behavioral = '0' report "Behavioral error: 1 NOR 1 must be 0" severity error;
    assert c_conditional = '0' report "Conditional error: 1 NOR 1 must be 0" severity error;
    
    report "NOR test (dataflow + behavioral + conditional) completed successfully" severity note;
    wait;
  end process;
end testbench;

-- AND gate testbench
entity AND_tb is
end AND_tb;

architecture testbench of AND_tb is
  signal a, b: bit;
  signal c_dataflow, c_behavioral, c_conditional: bit;
begin
  uut_dataflow: entity work.AND_logic_gate(AND_dataflow)
    port map (
      a => a,
      b => b,
      c => c_dataflow
    );

  uut_behavioral: entity work.AND_logic_gate(AND_behavioral)
    port map (
      a => a,
      b => b,
      c => c_behavioral
    );
  
  uut_conditional: entity work.AND_logic_gate(AND_conditional)
    port map (
      a => a,
      b => b,
      c => c_conditional
    );

  stimulus: process
  begin
    a <= '0'; b <= '0'; wait for 10 ns;
    assert c_dataflow = '0' report "Dataflow error: 0 AND 0 must be 0" severity error;
    assert c_behavioral = '0' report "Behavioral error: 0 AND 0 must be 0" severity error;
    assert c_conditional = '0' report "Conditional error: 0 AND 0 must be 0" severity error;
    
    a <= '0'; b <= '1'; wait for 10 ns;
    assert c_dataflow = '0' report "Dataflow error: 0 AND 1 must be 0" severity error;
    assert c_behavioral = '0' report "Behavioral error: 0 AND 1 must be 0" severity error;
    assert c_conditional = '0' report "Conditional error: 0 AND 1 must be 0" severity error;
    
    a <= '1'; b <= '0'; wait for 10 ns;
    assert c_dataflow = '0' report "Dataflow error: 1 AND 0 must be 0" severity error;
    assert c_behavioral = '0' report "Behavioral error: 1 AND 0 must be 0" severity error;
    assert c_conditional = '0' report "Conditional error: 1 AND 0 must be 0" severity error;
    
    a <= '1'; b <= '1'; wait for 10 ns;
    assert c_dataflow = '1' report "Dataflow error: 1 AND 1 must be 1" severity error;
    assert c_behavioral = '1' report "Behavioral error: 1 AND 1 must be 1" severity error;
    assert c_conditional = '1' report "Conditional error: 1 AND 1 must be 1" severity error;
    
    report "AND test (dataflow + behavioral + conditional) completed successfully" severity note;
    wait;
  end process;
end testbench;

-- OR gate testbench
entity OR_tb is
end OR_tb;

architecture testbench of OR_tb is
  signal a, b: bit;
  signal c_dataflow, c_behavioral, c_conditional: bit;
begin
  uut_dataflow: entity work.OR_logic_gate(OR_dataflow)
    port map (
      a => a,
      b => b,
      c => c_dataflow
    );

  uut_behavioral: entity work.OR_logic_gate(OR_behavioral)
    port map (
      a => a,
      b => b,
      c => c_behavioral
    );
  
  uut_conditional: entity work.OR_logic_gate(OR_conditional)
    port map (
      a => a,
      b => b,
      c => c_conditional
    );

  stimulus: process
  begin
    a <= '0'; b <= '0'; wait for 10 ns;
    assert c_dataflow = '0' report "Dataflow error: 0 OR 0 must be 0" severity error;
    assert c_behavioral = '0' report "Behavioral error: 0 OR 0 must be 0" severity error;
    assert c_conditional = '0' report "Conditional error: 0 OR 0 must be 0" severity error;
    
    a <= '0'; b <= '1'; wait for 10 ns;
    assert c_dataflow = '1' report "Dataflow error: 0 OR 1 must be 1" severity error;
    assert c_behavioral = '1' report "Behavioral error: 0 OR 1 must be 1" severity error;
    assert c_conditional = '1' report "Conditional error: 0 OR 1 must be 1" severity error;
    
    a <= '1'; b <= '0'; wait for 10 ns;
    assert c_dataflow = '1' report "Dataflow error: 1 OR 0 must be 1" severity error;
    assert c_behavioral = '1' report "Behavioral error: 1 OR 0 must be 1" severity error;
    assert c_conditional = '1' report "Conditional error: 1 OR 0 must be 1" severity error;
    
    a <= '1'; b <= '1'; wait for 10 ns;
    assert c_dataflow = '1' report "Dataflow error: 1 OR 1 must be 1" severity error;
    assert c_behavioral = '1' report "Behavioral error: 1 OR 1 must be 1" severity error;
    assert c_conditional = '1' report "Conditional error: 1 OR 1 must be 1" severity error;
    
    report "OR test (dataflow + behavioral + conditional) completed successfully" severity note;
    wait;
  end process;
end testbench;

-- XOR gate testbench
entity XOR_tb is
end XOR_tb;

architecture testbench of XOR_tb is
  signal a, b: bit;
  signal c_dataflow, c_behavioral, c_conditional: bit;
begin
  uut_dataflow: entity work.XOR_logic_gate(XOR_dataflow)
    port map (
      a => a,
      b => b,
      c => c_dataflow
    );

  uut_behavioral: entity work.XOR_logic_gate(XOR_behavioral)
    port map (
      a => a,
      b => b,
      c => c_behavioral
    );
  
  uut_conditional: entity work.XOR_logic_gate(XOR_conditional)
    port map (
      a => a,
      b => b,
      c => c_conditional
    );

  stimulus: process
  begin
    a <= '0'; b <= '0'; wait for 10 ns;
    assert c_dataflow = '0' report "Dataflow error: 0 XOR 0 must be 0" severity error;
    assert c_behavioral = '0' report "Behavioral error: 0 XOR 0 must be 0" severity error;
    assert c_conditional = '0' report "Conditional error: 0 XOR 0 must be 0" severity error;
    
    a <= '0'; b <= '1'; wait for 10 ns;
    assert c_dataflow = '1' report "Dataflow error: 0 XOR 1 must be 1" severity error;
    assert c_behavioral = '1' report "Behavioral error: 0 XOR 1 must be 1" severity error;
    assert c_conditional = '1' report "Conditional error: 0 XOR 1 must be 1" severity error;
    
    a <= '1'; b <= '0'; wait for 10 ns;
    assert c_dataflow = '1' report "Dataflow error: 1 XOR 0 must be 1" severity error;
    assert c_behavioral = '1' report "Behavioral error: 1 XOR 0 must be 1" severity error;
    assert c_conditional = '1' report "Conditional error: 1 XOR 0 must be 1" severity error;
    
    a <= '1'; b <= '1'; wait for 10 ns;
    assert c_dataflow = '0' report "Dataflow error: 1 XOR 1 must be 0" severity error;
    assert c_behavioral = '0' report "Behavioral error: 1 XOR 1 must be 0" severity error;
    assert c_conditional = '0' report "Conditional error: 1 XOR 1 must be 0" severity error;
    
    report "XOR test (dataflow + behavioral + conditional) completed successfully" severity note;
    wait;
  end process;
end testbench;
