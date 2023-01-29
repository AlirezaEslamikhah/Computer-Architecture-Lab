-- PIPO shifter with flip flop 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity pipo is
    port (clk, reset, load, enable: in std_logic;
          data_in: in std_logic_vector(7 downto 0);
          data_out: out std_logic_vector(7 downto 0));
end pipo;

architecture behavioral of pipo is
    signal reg: std_logic_vector(7 downto 0);
begin
    process(clk, reset)
    begin
        if reset = '1' then
            reg <= (others => '0');
        elsif rising_edge(clk) then
            if load = '1' then
                reg <= data_in;
            elsif enable = '1' then
                reg <= reg(6 downto 0) & reg(7);
            end if;
        end if;
    end process;
    data_out <= reg;
end ;


