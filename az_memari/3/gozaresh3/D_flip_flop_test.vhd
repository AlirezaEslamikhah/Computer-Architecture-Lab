LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY D_flip_flop_test IS
END D_flip_flop_test;

ARCHITECTURE behavior OF D_flip_flop_test IS 
   COMPONENT D_flip_flop
   PORT(
         d : IN  std_logic;
         reset : IN  std_logic;
         clk : IN  std_logic;
         q : OUT  std_logic
      );
   END COMPONENT;
   --Inputs
   signal d : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';
   --Outputs
   signal q : std_logic;
   -- Clock period definitions
   constant clk_period : time := 10 ns;
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: D_flip_flop PORT MAP (
         d => d,
         reset => reset,
         clk => clk,
         q => q
      );
   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	d <= '1', 'X' after 22 ns, '1' after 24 ns, 'U' after 35ns, '1' after 40 ns;
	reset <= '1' after 50 ns, '0' after 60 ns;
END;
