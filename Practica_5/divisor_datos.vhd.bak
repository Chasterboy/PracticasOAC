library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity divisor_datos is
	Port(entrada : in STD_LOGIC_VECTOR(17 downto 0); --Entrada
			Prueba : out STD_LOGIC_VECTOR(1 downto 0); --
			liga_f   : out STD_LOGIC_VECTOR(2 downto 0); --Edo siguiente
			liga_v   : out STD_LOGIC_VECTOR(2 downto 0); --Edo siguiente

			salidas_f: out STD_LOGIC_VECTOR(4 downto 0);
			salidas_v: out STD_LOGIC_VECTOR(4 downto 0));

			end divisor_datos;

architecture Behavioral of divisor_datos is
begin
		process(entrada)
		begin
			prueba <= entrada(17 downto 16); 
			liga_f <= entrada (15 downto 13);
			liga_v <= entrada (12 downto 10);
			salidas_f <= entrada (9 downto 5);
			salidas_v <= entrada (4 downto 0);
		end process;
end Behavioral;