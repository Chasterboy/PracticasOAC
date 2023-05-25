LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY memory IS
    PORT (
        dir : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        data : OUT STD_LOGIC_VECTOR(14 DOWNTO 0)
    );
END memory;
ARCHITECTURE Behavioral OF memory IS
    TYPE mem IS ARRAY(0 TO 7) OF
    STD_LOGIC_VECTOR(14 DOWNTO 0);
    SIGNAL
    internal_mem : mem;
BEGIN
    internal_mem(0) <= "000" & "1" & "110" & "0011" & "0101";
    internal_mem(1) <= "010" & "0" & "111" & "1011" & "1000";
    internal_mem(2) <= "011" & "0" & "101" & "1010" & "1111";
    internal_mem(3) <= "100" & "1" & "100" & "0101" & "0101";
    internal_mem(4) <= "001" & "1" & "010" & "1111" & "1111";
    internal_mem(5) <= "100" & "0" & "011" & "1011" & "1011";
    internal_mem(6) <= "100" & "0" & "100" & "0101" & "0101";
    internal_mem(7) <= "100" & "0" & "001" & "0000" & "0000";
    PROCESS (dir)
    BEGIN
        data <= internal_mem(conv_integer(unsigned(dir)));
    END PROCESS;
END Behavioral;