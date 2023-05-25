LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY mux1X2X1_3 IS
    PORT (
        seleccion : IN STD_LOGIC;
        E0 : IN STD_LOGIC_VECTOR(2 DOWNTO 0); -- N+1 
		  E1 : in STD_LOGIC_VECTOR(2 DOWNTO 0); --liga
        salida : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END mux1X2X1_3;
ARCHITECTURE Behavioral OF mux1X2X1_3 IS
BEGIN
    PROCESS (seleccion, E0, E1)
    BEGIN
        IF seleccion = '0' THEN
            salida <= E0;
        ELSIF seleccion = '1' THEN
            salida <= E1;
        END IF;
    END PROCESS;
END Behavioral;