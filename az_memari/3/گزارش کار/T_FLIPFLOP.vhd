library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity T_FLIPFLOP is
    Port ( T : in  STD_LOGIC;
        CLK : in  STD_LOGIC;
        RES : in  STD_LOGIC;
        TEMP : in  STD_LOGIC;
        Q : out  STD_LOGIC;
        QB : out  STD_LOGIC);
end T_FLIPFLOP;
architecture Behavioral of T_FLIPFLOP is
begin
PROCESS(T,CLK,RES)
VARIABLE TEMP:STD_LOGIC:='0';
BEGIN
IF(RES='1')THEN
TEMP:='0';
ELSIF(RISING_EDGE(CLK))THEN
IF(T='1')THEN
TEMP:= NOT TEMP;
END IF;
END IF;
Q<= NOT TEMP;
QB<= TEMP;
END PROCESS;
end Behavioral;

