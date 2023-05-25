LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY incrementador IS
    PORT (
        entrada : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        salida : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END incrementador;
ARCHITECTURE Behavioral OF incrementador IS
BEGIN
    PROCESS (entrada)
    BEGIN
        salida <= entrada + 1;
    END PROCESS;
END Behavioral;
