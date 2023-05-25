library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity registro_1 is
    port (
        CLK : in std_logic;
        RESET : in std_logic;
        ENA : in std_logic;
        DATA_IN : in std_logic;
        DATA_OUT : out std_logic
    );
end registro_1;

architecture Behavioral of registro_1 is
signal internal_value: std_logic := '0'; -- 00 inicializa carta asm P.E: (4 downto 0) := X"00000"
constant alta_impedancia: std_logic:= 'Z';
constant zero: std_logic := '0';

begin
    process (CLK, RESET, DATA_IN) --evaluamos entradas 
    begin
        if RESET = '0' then --si reset es 0
            internal_value <= zero; --toma el estado inicial
        elsif rising_edge (CLK) then
            internal_value <= DATA_IN; --si hay un cambio interno, este tomara el valor de data_in(valor de liga)
        end if;                        --siempre que se le asigne un valor de DATA_in, se podra avanzar en la carta asm

    end process;

    process(internal_value, ENA)
    begin
        if ENA = '1' then
            DATA_OUT <= alta_impedancia; -- a la salida se le asigna la alta impedancia
        else
            DATA_OUT <= internal_value; -- a la salida se le asigna el valor interno
        end if;

    end process;
end Behavioral;


