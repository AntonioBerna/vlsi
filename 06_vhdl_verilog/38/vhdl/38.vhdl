library ieee;

-- NOR gate
entity NOR_logic_gate is 
  port (
    a, b: in bit;
    c: out bit
  );
end NOR_logic_gate;

architecture NOR_dataflow of NOR_logic_gate is
  begin
    c <= a nor b;
end NOR_dataflow;

architecture NOR_behavioral of NOR_logic_gate is
  begin
    process(a, b)
    begin
      if (a = '0' and b = '0') then
        c <= '1';
      else
        c <= '0';
      end if;
    end process;
end NOR_behavioral;

architecture NOR_conditional of NOR_logic_gate is
  begin
    c <= '1' when (a = '0' and b = '0') else '0';
end NOR_conditional;

-- AND gate
entity AND_logic_gate is 
  port (
    a, b: in bit;
    c: out bit
  );
end AND_logic_gate;

architecture AND_dataflow of AND_logic_gate is
  begin
    c <= a and b;
end AND_dataflow;

architecture AND_behavioral of AND_logic_gate is
  begin
    process(a, b)
    begin
      if (a = '1' and b = '1') then
        c <= '1';
      else
        c <= '0';
      end if;
    end process;
end AND_behavioral;

architecture AND_conditional of AND_logic_gate is
  begin
    c <= '1' when (a = '1' and b = '1') else '0';
end AND_conditional;

-- OR gate
entity OR_logic_gate is 
  port (
    a, b: in bit;
    c: out bit
  );
end OR_logic_gate;

architecture OR_dataflow of OR_logic_gate is
  begin
    c <= a or b;
end OR_dataflow;

architecture OR_behavioral of OR_logic_gate is
  begin
    process(a, b)
    begin
      if (a = '1' or b = '1') then
        c <= '1';
      else
        c <= '0';
      end if;
    end process;
end OR_behavioral;

architecture OR_conditional of OR_logic_gate is
  begin
    c <= '1' when (a = '1' or b = '1') else '0';
end OR_conditional;

-- XOR gate
entity XOR_logic_gate is 
  port (
    a, b: in bit;
    c: out bit
  );
end XOR_logic_gate;

architecture XOR_dataflow of XOR_logic_gate is
  begin
    c <= a xor b;
end XOR_dataflow;

architecture XOR_behavioral of XOR_logic_gate is
  begin
    process(a, b)
    begin
      if (a /= b) then
        c <= '1';
      else
        c <= '0';
      end if;
    end process;
end XOR_behavioral;

architecture XOR_conditional of XOR_logic_gate is
  begin
    c <= '1' when (a /= b) else '0';
end XOR_conditional;
