library ieee;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity descending_counter_tb is
end descending_counter_tb;

architecture TB_ARCHITECTURE of descending_counter_tb is
	-- Component declaration of the tested unit
	component descending_counter
	port(
		Tin : in STD_LOGIC;
		clock : in STD_LOGIC;
		rst : in STD_LOGIC;
		output : out STD_LOGIC_VECTOR(3 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal Tin : STD_LOGIC;
	signal clock : STD_LOGIC;
	signal rst : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal output : STD_LOGIC_VECTOR(3 downto 0);
	signal clk_prd : time := 50ns;
begin
	UUT : descending_counter
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

configuration TESTBENCH_FOR_descending_counter of descending_counter_tb is
	for TB_ARCHITECTURE
		for UUT : descending_counter
			use entity work.descending_counter(behavioral);
		end for;
	end for;
end TESTBENCH_FOR_descending_counter;

