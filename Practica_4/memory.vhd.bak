LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY memory IS
	PORT (
		dir : IN STD_LOGIC_VECTOR(5 DOWNTO 0);--Entradas + Edo siguiente
		data : OUT STD_LOGIC_VECTOR(5 DOWNTO 0));--Liga +salidas
END memory;

ARCHITECTURE Behavioral OF memory IS
	TYPE mem IS ARRAY(0 TO 63) OF STD_LOGIC_VECTOR(5 DOWNTO 0);
	SIGNAL internal_mem : mem;

BEGIN
	--Estado 0
	internal_mem(0) <= "100" & "010";
	internal_mem(1) <= "100" & "010";
	internal_mem(2) <= "100" & "010";
	internal_mem(3) <= "100" & "010";
	internal_mem(4) <= "001" & "111";
	internal_mem(5) <= "001" & "111";
	internal_mem(6) <= "001" & "111";
	internal_mem(7) <= "001" & "111";
	--Estado 1
	internal_mem(8) <= "001" & "010";
	internal_mem(9) <= "001" & "010";
	internal_mem(10) <= "010" & "001";
	internal_mem(11) <= "100" & "001";
	internal_mem(12) <= "001" & "010";
	internal_mem(13) <= "001" & "010";
	internal_mem(14) <= "010" & "001";
	internal_mem(15) <= "100" & "001";
	--Estado 2
	internal_mem(16) <= "011" & "111";
	internal_mem(17) <= "011" & "111";
	internal_mem(18) <= "011" & "111";
	internal_mem(19) <= "011" & "111";
	internal_mem(20) <= "011" & "111";
	internal_mem(21) <= "011" & "111";
	internal_mem(22) <= "011" & "111";
	internal_mem(23) <= "011" & "111";
	--Estado 3
	internal_mem(24) <= "000" & "000";
	internal_mem(25) <= "000" & "000";
	internal_mem(26) <= "000" & "000";
	internal_mem(27) <= "000" & "000";
	internal_mem(28) <= "000" & "000";
	internal_mem(29) <= "000" & "000";
	internal_mem(30) <= "000" & "000";
	internal_mem(31) <= "000" & "000";
	--Estado 4
	internal_mem(32) <= "101" & "110";
	internal_mem(33) <= "010" & "010";
	internal_mem(34) <= "101" & "110";
	internal_mem(35) <= "010" & "010";
	internal_mem(36) <= "101" & "110";
	internal_mem(37) <= "010" & "010";
	internal_mem(38) <= "101" & "110";
	internal_mem(39) <= "010" & "010";
	--Estado 5
	internal_mem(40) <= "011" & "111";
	internal_mem(41) <= "011" & "111";
	internal_mem(42) <= "011" & "111";
	internal_mem(43) <= "011" & "111";
	internal_mem(44) <= "100" & "011";
	internal_mem(45) <= "100" & "011";
	internal_mem(46) <= "100" & "011";
	internal_mem(47) <= "100" & "011";
	--Estados basura
	internal_mem(48) <= "000" & "001";
	internal_mem(49) <= "000" & "001";
	internal_mem(50) <= "000" & "001";
	internal_mem(51) <= "000" & "001";
	internal_mem(52) <= "000" & "001";
	internal_mem(53) <= "000" & "001";
	internal_mem(54) <= "000" & "001";
	internal_mem(55) <= "000" & "001";
	internal_mem(56) <= "000" & "001";
	internal_mem(57) <= "000" & "001";
	internal_mem(58) <= "000" & "001";
	internal_mem(59) <= "000" & "001";
	internal_mem(60) <= "000" & "001";
	internal_mem(61) <= "000" & "001";
	internal_mem(62) <= "000" & "001";
	internal_mem(63) <= "000" & "001";

	PROCESS (dir)
	BEGIN
		data <= internal_mem(conv_integer(unsigned(dir)));
	END PROCESS;
END Behavioral;