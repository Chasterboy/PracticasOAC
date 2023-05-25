LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY mux_entradas IS
    PORT (
        prueba : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        Q1 : IN STD_LOGIC; --V
        Q2 : IN STD_LOGIC; --W
        Q3 : IN STD_LOGIC; --X
        Q4 : IN STD_LOGIC; --Z
        AUX : IN STD_LOGIC; --Qaux = 0
        salida : OUT STD_LOGIC
    );
END mux_entradas;
ARCHITECTURE Behavioral OF mux_entradas IS
BEGIN
    PROCESS (prueba, Q1, Q2, Q3, Q4, AUX)
    BEGIN
        IF prueba = "000" THEN
            salida <= Q1;
        ELSIF prueba = "001" THEN
            salida <= Q2;
        ELSIF prueba = "010" THEN
            salida <= Q3;
        ELSIF prueba = "011" THEN
            salida <= Q4;
        ELSIF prueba = "100" THEN
            salida <= AUX;
        END IF;
    END PROCESS;
END Behavioral;