LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.std_logic_arith.ALL;
USE IEEE.std_logic_unsigned.ALL;

ENTITY div_frec IS
    PORT (
        reloj : IN STD_LOGIC;
		  div_clk: out std_logic
        
    );
END div_frec;


ARCHITECTURE Behavioral OF div_frec IS

BEGIN

    PROCESS (reloj)
        VARIABLE cuenta : STD_LOGIC_VECTOR(27 DOWNTO 0) := X"0000000";
    BEGIN
        IF rising_edge(reloj) THEN
            IF cuenta = X"FFFFFFFF" THEN
                cuenta := X"0000000";
            ELSE
                cuenta := cuenta + 1;
            END IF;
        END IF;
		  div_clk <= cuenta(22);

    END PROCESS;
	 end Behavioral;