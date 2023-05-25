LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY divisor_datos IS
    PORT (
        entrada : IN STD_LOGIC_VECTOR (14 DOWNTO 0);
        prueba : OUT STD_LOGIC_VECTOR (2 DOWNTO 0); --prueba
        vF : OUT STD_LOGIC;
        liga : OUT STD_LOGIC_VECTOR (2 DOWNTO 0); --liga
        salidasF : OUT STD_LOGIC_VECTOR (3 DOWNTO 0); --salidas falsas 
        salidasV : OUT STD_LOGIC_VECTOR (3 DOWNTO 0));-- salidas verdaderas
END divisor_datos;
ARCHITECTURE Behavioral OF divisor_datos IS
BEGIN
    PROCESS (entrada)
    BEGIN
        prueba <= entrada(14 DOWNTO 12);
        vF <= entrada(11);
        liga <= entrada(10 DOWNTO 8);
        salidasF <= entrada(7 DOWNTO 4);
        salidasV <= entrada(3 DOWNTO 0);
    END PROCESS;
END Behavioral;