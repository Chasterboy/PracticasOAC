library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity incrementador is
    port(
        entrada: in std_logic_vector(3 downto 0); --entra la salida del resgistro 
        salida: out std_logic_vector(3 downto 0) --salida del incrementador
    );
end incrementador;

architecture Behavioral of incrementador is 
begin
     process (entrada)
     begin 
        salida <= entrada + '1';
        end process;
end Behavioral; 