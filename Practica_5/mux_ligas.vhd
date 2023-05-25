LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
ENTITY mux_ligas IS
    PORT (
        SEL : IN STD_LOGIC;
        ligaf : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        ligav : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        liga : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END mux_ligas;
ARCHITECTURE Behavioral OF mux_ligas IS
BEGIN
    PROCESS (SEL, ligaf, ligav)
    BEGIN
        IF SEL = '0' THEN
            liga <= ligaf;
        ELSIF SEL = '1' THEN
            liga <= ligav;
        END IF;
    END PROCESS;
END Behavioral;