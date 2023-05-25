LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY mux_entradas IS
    PORT (
        prueba : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        W : IN STD_LOGIC;
        X : IN STD_LOGIC;
        Y : IN STD_LOGIC;
        Z : IN STD_LOGIC;
        entrada : OUT STD_LOGIC);
END mux_entradas;
ARCHITECTURE Behavioral OF mux_entradas  IS
BEGIN
    PROCESS (prueba, W, X, Y, Z )
    BEGIN
        IF prueba = "00" THEN
            entrada <= W;
        ELSIF prueba = "01" THEN
            entrada <= X;
        ELSIF prueba = "10" THEN
            entrada <= Y;
        ELSIF prueba = "11" THEN
            entrada <= Z;
        END IF;
    END PROCESS;
 END Behavioral; 