LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY register3 IS
    PORT (
        CLK : IN STD_LOGIC;
        RESET : IN STD_LOGIC;
        DATA_IN : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
        DATA_OUT : OUT STD_LOGIC_VECTOR (2 DOWNTO 0));
END register3;
ARCHITECTURE Behavioral OF register3 IS
    SIGNAL internal_value : STD_LOGIC_VECTOR(2
    DOWNTO 0) := B"000";
BEGIN
    PROCESS (CLK, RESET, DATA_IN)
    BEGIN
        IF RESET = '0' THEN
            internal_value <= B"000";
        ELSIF rising_edge(CLK) THEN
            internal_value <= DATA_IN;
        END IF;
    END PROCESS;
    PROCESS (internal_value)
    BEGIN
        DATA_OUT <= internal_value;
    END PROCESS;
END Behavioral;