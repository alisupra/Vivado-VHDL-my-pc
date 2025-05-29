library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity JK_FF is
    Port (
        clk : in STD_LOGIC;
        reset : in STD_LOGIC;
        J : in STD_LOGIC;
        K : in STD_LOGIC;
        Q : out STD_LOGIC;
        Qb : out STD_LOGIC
    );
end JK_FF;

architecture Behavioral of JK_FF is
    signal q_int : STD_LOGIC := '0';
begin
    process(clk)
    begin
        if reset = '1' then
            q_int <= '0';             
        elsif rising_edge(clk) then
            if (J = '0' and K = '0') then
                q_int <= q_int;    
            elsif (J = '0' and K = '1') then
                q_int <= '0';        
            elsif (J = '1' and K = '0') then
                q_int <= '1';         
            else  -- J=1, K=1 toggle
                q_int <= not q_int;
            end if;
        end if;
    end process;

    Q <= q_int;
    Qb <= not q_int;
end Behavioral;
