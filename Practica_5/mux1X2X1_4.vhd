LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY mux1X2X1_4 IS
    PORT (
        sel : IN STD_LOGIC; --carga
        E0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        E1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        salida : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END mux1X2X1_4;
ARCHITECTURE Behavioral OF mux1X2X1_4 IS
BEGIN
    PROCESS (sel, E0, E1)
    BEGIN
        IF sel = '0' THEN
            salida <= E0;
        ELSIF sel = '1' THEN
            salida <= E1;
        END IF;
    END PROCESS;
END Behavioral;