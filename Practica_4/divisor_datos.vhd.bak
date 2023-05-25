library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity divisor_datos is
	Port(entrada : in STD_LOGIC_VECTOR(5 downto 0); --Entrada
			liga   : out STD_LOGIC_VECTOR(2 downto 0); --Edo siguiente
			salidas: out STD_LOGIC_VECTOR(2 downto 0));
end divisor_datos;

architecture Behavioral of divisor_datos is
begin
		process(entrada)
		begin
			liga <= entrada (5 downto 3);
			salidas <= entrada (2 downto 0);
		end process;
end Behavioral;