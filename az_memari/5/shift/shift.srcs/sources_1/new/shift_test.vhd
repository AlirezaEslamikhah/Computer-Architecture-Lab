-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 4.12.2022 13:22:36 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_pipo is
end tb_pipo;

architecture tb of tb_pipo is

    component pipo
        port (clk      : in std_logic;
              reset    : in std_logic;
              load     : in std_logic;
              enable   : in std_logic;
              data_in  : in std_logic_vector (7 downto 0);
              data_out : out std_logic_vector (7 downto 0));
    end component;

    signal clk      : std_logic;
    signal reset    : std_logic;
    signal load     : std_logic;
    signal enable   : std_logic;
    signal data_in  : std_logic_vector (7 downto 0);
    signal data_out : std_logic_vector (7 downto 0);

    constant TbPeriod : time := 1000 ns; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : pipo
    port map (clk      => clk,
              reset    => reset,
              load     => load,
              enable   => enable,
              data_in  => data_in,
              data_out => data_out);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that clk is really your main clock signal
    clk <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        load <= '0';
        enable <= '0';
        data_in <= (others => '0');

        -- Reset generation
        -- EDIT: Check that reset is really your reset signal
        reset <= '1';
        wait for 100 ns;
        reset <= '0';
        wait for 100 ns;

        -- EDIT Add stimuli here
        wait for 100 * TbPeriod;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_pipo of tb_pipo is
    for tb
    end for;
end cfg_tb_pipo;