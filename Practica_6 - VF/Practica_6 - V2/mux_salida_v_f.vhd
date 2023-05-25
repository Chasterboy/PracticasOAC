library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mux_salida_v_f is
    port(
        Sel: in std_logic; --corresponde al valor de la prueba  
        I0: in std_logic_vector(5 downto 0); 
        I1: in std_logic_vector(5 downto 0); -- luga de 4 bits
        L: out std_logic_vector(5 downto 0) -- selector de liga
    );

end mux_salida_v_f;
architecture Behavioral of mux_salida_v_f is
begin
        process (Sel, I0, I1)
        begin 
            if sel = '0' then 
                L <= I0;
            elsif sel = '1' then 
                L <= I1;
            end if;
    end process;
end Behavioral;
