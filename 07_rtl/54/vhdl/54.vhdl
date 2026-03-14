library ieee;
  use ieee.std_logic_1164.all;

entity alarm_asm is
  port (
    clk   : in    std_logic;
    rst   : in    std_logic;
    input : in    std_logic;
    alarm : out   std_logic
  );
end entity alarm_asm;

architecture rtl of alarm_asm is

  type state_t is (s0, s1, s2, s3, s4);

  signal state, next_state : state_t;

begin

  -- State register
  state_reg_p : process (clk) is
  begin

    if rising_edge(clk) then
      if (rst = '1') then
        state <= s0;
      else
        state <= next_state;
      end if;
    end if;

  end process state_reg_p;

  -- Next-state and output logic
  next_out_p : process (state, input) is
  begin

    alarm      <= '0';
    next_state <= s0;

    case state is

      when s0 =>

        if (input = '1') then
          next_state <= s1;
        else
          next_state <= s0;
        end if;

      when s1 =>

        if (input = '1') then
          next_state <= s2;
        else
          next_state <= s0;
        end if;

      when s2 =>

        if (input = '1') then
          next_state <= s3;
        else
          next_state <= s0;
        end if;

      when s3 =>

        if (input = '1') then
          next_state <= s4;
        else
          next_state <= s0;
        end if;

      when s4 =>

        alarm      <= '1';
        next_state <= s0;

    end case;

  end process next_out_p;

end architecture rtl;

