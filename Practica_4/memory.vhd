LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY memory IS
	PORT (
		dir : IN STD_LOGIC_VECTOR(2 DOWNTO 0);--Entradas + Edo siguiente
		data : OUT STD_LOGIC_VECTOR(17 DOWNTO 0));--Liga +salidas
END memory;

ARCHITECTURE Behavioral OF memory IS
	TYPE mem IS ARRAY(0 TO 7) OF STD_LOGIC_VECTOR(17 DOWNTO 0);
	SIGNAL internal_mem : mem;

BEGIN
	--Estado 0
	--	internal_mem(0) <= "00" & "001" & "001" & "00011" & "00011";

	--	internal_mem(1) <= "11" & "010" & "100" & "10001" & "11010";
	--	internal_mem(2) <= "00" & "011" & "011" & "00011" & "00011";
	--	internal_mem(3) <= "01" & "101" & "110" & "00101" & "00100";
	--	internal_mem(4) <= "00" & "001" & "010" & "01000" & "01010";
	--	internal_mem(5) <= "00" & "011" & "011" & "00010" & "00010";
	--	internal_mem(6) <= "10" & "101" & "010" & "10011" & "11011";
	--	internal_mem(7) <= "00" & "000" & "000" & "00011" & "00011";
	internal_mem(0) <= "00" & "001" & "001" & "11000" & "11000";
	internal_mem(1) <= "11" & "010" & "100" & "10001" & "11001";
	internal_mem(2) <= "00" & "011" & "011" & "11000" & "11000";
	internal_mem(3) <= "01" & "101" & "110" & "10100" & "00100";
	internal_mem(4) <= "00" & "001" & "010" & "00010" & "01010";
	internal_mem(5) <= "00" & "011" & "011" & "01000" & "01000";
	internal_mem(6) <= "10" & "101" & "010" & "11001" & "11011";

	PROCESS (dir)
	BEGIN
		data <= internal_mem(conv_integer(unsigned(dir)));
	END PROCESS;
END Behavioral;