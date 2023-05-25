LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY mux_salidas IS
    PORT (
        SEL : IN STD_LOGIC;
        salidaf : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        salidav : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        salida : OUT STD_LOGIC_VECTOR(4 DOWNTO 0));
END mux_salidas;
ARCHITECTURE Behavioral OF mux_salidas IS
BEGIN
    PROCESS (SEL, salidaf, salidav)
    BEGIN
        IF SEL = '0' THEN
            salida <= salidaf;
        ELSIF SEL = '1' THEN
            salida <= salidav;
        END IF;
    END PROCESS;
END Behavioral;