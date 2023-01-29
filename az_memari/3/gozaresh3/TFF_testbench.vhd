LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY TFF_testbench IS
END TFF_testbench;
ARCHITECTURE behavior OF TFF_testbench IS 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT T_FLIPFLOP
    PORT(
         T : IN  std_logic;
         CLK : IN  std_logic;
         RES : IN  std_logic;
         TEMP : IN  std_logic;
         Q : OUT  std_logic;
         QB : OUT  std_logic
        );
   END COMPONENT;
   --Inputs
   signal T : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RES : std_logic := '0';
   signal TEMP : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal QB : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: T_FLIPFLOP PORT MAP (
         T => T,
         CLK => CLK,
         RES => RES,
         TEMP => TEMP,
         Q => Q,
         QB => QB
      );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
	stim: process
	begin
	RES <= '0';
	T <= '0';
	wait for 20 ns;
	T <= '1';
	wait for 20 ns;
	end process;
END;
