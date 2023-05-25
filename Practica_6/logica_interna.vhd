LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

entity logica_interna is
   port (
      CC   : in std_logic;
      MI   : in std_logic_vector(1 downto 0);
      Sel  : out std_logic;
      PL   : out std_logic;
      NMAP : out std_logic;
      VECT : out std_logic
   );
end logica_interna;

architecture Behavioral of logica_interna is

begin
    process(MI, CC)
    begin
    if MI = "00" then
            Sel <= '0';
            PL <= '1';
            NMAP <= '1';
            VECT <= '1';
        elsif MI = "01" then 
            if CC = '0' then Sel <= '1';
            else Sel <= '0'; end if;
            PL <= '0';
            NMAP <= '1';
            VECT <= '1';
        elsif MI = "10" then
            Sel <= '1'; 
            PL <= '1';
            NMAP <= '0';
            VECT <= '1';
        elsif MI = "11" then 
            if CC = '0' then Sel <= '1';
            else Sel <= '0'; end if;
            PL <= '1';
            NMAP <= '1';
            VECT <= '0';
        end if;   
    end process;
end Behavioral;