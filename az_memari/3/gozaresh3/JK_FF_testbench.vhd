LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY JK_FF_testbench IS
END JK_FF_testbench;
ARCHITECTURE behavior OF JK_FF_testbench IS 
   COMPONENT JK_flip_flop
   PORT(
         J : IN  std_logic;
         K : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         Q : OUT  std_logic;
         Qbar : OUT  std_logic
      );
   END COMPONENT;
   --Inputs
   signal J : std_logic := '0';
   signal K : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   --Outputs
   signal Q : std_logic;
   signal Qbar : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: JK_flip_flop PORT MAP (
         J => J,
         K => K,
         clk => clk,
         rst => rst,
         Q => Q,
         Qbar => Qbar
      );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
	Force: process
	begin
		J <= '0';
		K <= '0';
		rst <= '0';
		wait for 20 ns;

		J <= '0';
		K <= '1';
		rst <= '0';
		wait for 20 ns;

		J <= '1';
		K <= '0';
		rst <= '0';
		wait for 20 ns;

		J <= '1';
		K <= '1';
		rst <= '0';
		wait for 20 ns;

		J <= '1';
		K <= '1';
		rst <= '0';
		wait for 20 ns;

		J <= '0';
		K <= '0';
		rst <= '0';
		wait for 20 ns;

		J <= '0';
		K <= '0';
		rst <= '1';
		wait for 20 ns;
	end process;

END;
