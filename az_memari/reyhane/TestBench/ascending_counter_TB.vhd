library ieee;
use ieee.std_logic_1164.all;
entity ascending_counter_tb is
end ascending_counter_tb;
architecture TB_ARCHITECTURE of ascending_counter_tb is
	component ascending_counter
	port(
		Tin : in STD_LOGIC;
		clock : in STD_LOGIC;
		rst : in STD_LOGIC;
		output : out STD_LOGIC_VECTOR(3 downto 0) );
	end component;
	signal Tin : STD_LOGIC;
	signal clock : STD_LOGIC;
	signal rst : STD_LOGIC;
	signal output : STD_LOGIC_VECTOR(3 downto 0);
	signal clk_prd : time := 50 ns;
begin
	UUT : ascending_counter
		port map (
			Tin => Tin,
			clock => clock,
			rst => rst,
			output => output
		);
	process is
	begin
		Tin <= '1';	
		rst <= '1';
		clock <= '0';
		wait for clk_prd/2;
		rst <= '0';
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';	   
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2; 
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';	   
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';
		wait for clk_prd/2;
		clock <= '0';
		wait for clk_prd/2;
		clock <= '1';
	end process;

end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_ascending_counter of ascending_counter_tb is
	for TB_ARCHITECTURE
		for UUT : ascending_counter
			use entity work.ascending_counter(behavioral);
		end for;
	end for;
end TESTBENCH_FOR_ascending_counter;

