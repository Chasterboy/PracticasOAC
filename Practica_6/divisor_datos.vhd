library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity divisor_datos is
   port (
      entrada  : in std_logic_vector(20 downto 0);
      prueba   : out std_logic_vector(1 downto 0);
      VF       : out std_logic;
      MI : out std_logic_vector(1 downto 0);
      Liga     : out std_logic_vector(3 downto 0);
      salidasF  : out std_logic_vector(5 downto 0);
	  salidasV  : out std_logic_vector(5 downto 0)
   );
end divisor_datos;

architecture Behavioral of divisor_datos is
begin
   process(entrada)
   begin
      prueba   <= entrada(20 downto 19);
      VF       <= entrada(18);
      MI      <= entrada(17 downto 16);
      Liga     <= entrada(15 downto 12);
      salidasF  <= entrada(11 downto 6);
	 salidasV  <= entrada(5 downto 0);
   end process;
end architecture;