library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity D_flip_flop is
    Port ( d : in  STD_LOGIC;
        reset : in  STD_LOGIC;
        clk : in  STD_LOGIC;
        q : out  STD_LOGIC);
end D_flip_flop;
architecture Behavioral of D_flip_flop is
begin
	process(reset, clk)
	begin
		if (reset = '1') then
			q <= '0';
		else if (clk'event and clk='0') then
			q <= d;
		end if;
		end if;
	end process;
end Behavioral;



