library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoria is
   port (
      dir  : in std_logic_vector(3 downto 0);
      data : out std_logic_vector(20 downto 0)
   );
end memoria;

architecture Behavioral of memoria is
   type mem is array (0 to 15) of std_logic_vector(20 downto 0);
   signal internal_mem : mem;

begin
   -- Direccion       Prueba   VF    MI     Liga    SalidasV   SalidasF  
--		internal_mem(0)  <= "00" & "0" & "00" & "0000" & "010100" & "000000";
--		internal_mem(1)  <= "00" & "0" & "10" & "0000" & "100000" & "000000";
--		internal_mem(2)  <= "00" & "0" & "01" & "0010" & "001000" & "000000";
--		internal_mem(3)  <= "10" & "1" & "11" & "0000" & "000100" & "000000";
--		internal_mem(4)  <= "00" & "0" & "00" & "0000" & "001100" & "000000";
--		internal_mem(5)  <= "11" & "0" & "01" & "0000" & "100000" & "000000";
--		internal_mem(6)  <= "00" & "0" & "00" & "0000" & "110100" & "000000";
--		internal_mem(7)  <= "11" & "0" & "01" & "0000" & "001000" & "000000";
--		internal_mem(8)  <= "00" & "0" & "00" & "0000" & "000100" & "000000";
--		internal_mem(9)  <= "01" & "1" & "01" & "1011" & "000000" & "000000";
--		internal_mem(10) <= "11" & "0" & "01" & "0110" & "001100" & "000000";
--		internal_mem(11) <= "00" & "0" & "10" & "0000" & "101000" & "000000";
--		internal_mem(12) <= "11" & "0" & "01" & "1101" & "000000" & "000000";
--		internal_mem(13) <= "10" & "1" & "11" & "0000" & "010000" & "000000";
--		internal_mem(14) <= "11" & "0" & "01" & "1011" & "100000" & "000000";
--		internal_mem(15) <= "11" & "0" & "01" & "0000" & "000000" & "000000";

		internal_mem(0) <= "00" & "0" & "00" & "0000" & "000001" & "000001";
		internal_mem(1) <= "00" & "1" & "01" & "0111" & "001111" & "001111";
		internal_mem(2) <= "00" & "0" & "00" & "0000" & "000011" & "000011";
		internal_mem(3) <= "00" & "0" & "00" & "0100" & "001010" & "001010";
		internal_mem(4) <= "00" & "1" & "10" & "0000" & "010000" & "010000";
		internal_mem(5) <= "01" & "0" & "01" & "1010" & "010010" & "110010";
		internal_mem(6) <= "11" & "0" & "01" & "0010" & "001001" & "001001";
		internal_mem(7) <= "10" & "0" & "11" & "0000" & "010000" & "010001";
		internal_mem(8) <= "11" & "0" & "01" & "0001" & "100000" & "100000";
		internal_mem(9) <= "10" & "1" & "11" & "0000" & "101011" & "001010";
		internal_mem(10) <= "11" & "0" & "01" & "0000" & "000000" & "000000";
		internal_mem(11) <= "00" & "1" & "10" & "0000" & "000100" & "000100";
		internal_mem(12) <= "11" & "0" & "01" & "0000" & "000100" & "000100";
		internal_mem(13) <= "11" & "0" & "01" & "0000" & "101000" & "101000";
		internal_mem(14) <= "11" & "0" & "01" & "0000" & "010011" & "010011";
		internal_mem(15) <= "11" & "0" & "01" & "0000" & "000000" & "000000";






       
   process(dir)
   begin
      data <= internal_mem(to_integer(unsigned(dir)));
   end process;
end architecture;