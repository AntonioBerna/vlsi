library ieee;

-- NOR gate

entity nor_logic_gate is
  port (
    a : in    bit;
    b : in    bit;
    c : out   bit
  );
end entity nor_logic_gate;

architecture nor_dataflow of nor_logic_gate is

begin

  c <= a nor b;

end architecture nor_dataflow;

architecture nor_behavioral of nor_logic_gate is

begin

  nor_p : process (a, b) is
  begin

    if (a = '0' and b = '0') then
      c <= '1';
    else
      c <= '0';
    end if;

  end process nor_p;

end architecture nor_behavioral;

architecture nor_conditional of nor_logic_gate is

begin

  c <= '1' when (a = '0' and b = '0') else
       '0';

end architecture nor_conditional;

-- AND gate

entity and_logic_gate is
  port (
    a : in    bit;
    b : in    bit;
    c : out   bit
  );
end entity and_logic_gate;

architecture and_dataflow of and_logic_gate is

begin

  c <= a and b;

end architecture and_dataflow;

architecture and_behavioral of and_logic_gate is

begin

  and_p : process (a, b) is
  begin

    if (a = '1' and b = '1') then
      c <= '1';
    else
      c <= '0';
    end if;

  end process and_p;

end architecture and_behavioral;

architecture and_conditional of and_logic_gate is

begin

  c <= '1' when (a = '1' and b = '1') else
       '0';

end architecture and_conditional;

-- OR gate

entity or_logic_gate is
  port (
    a : in    bit;
    b : in    bit;
    c : out   bit
  );
end entity or_logic_gate;

architecture or_dataflow of or_logic_gate is

begin

  c <= a or b;

end architecture or_dataflow;

architecture or_behavioral of or_logic_gate is

begin

  or_p : process (a, b) is
  begin

    if (a = '1' or b = '1') then
      c <= '1';
    else
      c <= '0';
    end if;

  end process or_p;

end architecture or_behavioral;

architecture or_conditional of or_logic_gate is

begin

  c <= '1' when (a = '1' or b = '1') else
       '0';

end architecture or_conditional;

-- XOR gate

entity xor_logic_gate is
  port (
    a : in    bit;
    b : in    bit;
    c : out   bit
  );
end entity xor_logic_gate;

architecture xor_dataflow of xor_logic_gate is

begin

  c <= a xor b;

end architecture xor_dataflow;

architecture xor_behavioral of xor_logic_gate is

begin

  xor_p : process (a, b) is
  begin

    if (a /= b) then
      c <= '1';
    else
      c <= '0';
    end if;

  end process xor_p;

end architecture xor_behavioral;

architecture xor_conditional of xor_logic_gate is

begin

  c <= '1' when (a /= b) else
       '0';

end architecture xor_conditional;
