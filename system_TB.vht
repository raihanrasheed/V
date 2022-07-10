entity system_TB is

end entity;

architecture system_TB_arch of system_TB is

-- component declaration :

component system is

port (x, y, z : in bit_vector(3 downto 0);
sum : out bit_vector(4 downto 0);
carry_out : out bit);

end component;

signal X_TB, Y_TB, Z_TB :  bit_vector(3 downto 0);

signal sum_TB : bit_vector(4 downto 0);

signal carry_out_TB : bit;

begin
system_TB : system 
port map (X_TB, Y_TB, Z_TB,sum_TB, carry_out_TB );
 
 stimulus : process

begin

 X_TB <= "1100";
 Y_TB <= "1101";
 Z_TB <= "1110";

 wait for 40 ns;

 X_TB <= "1111";
 Y_TB <= "1000";
 Z_TB <= "1001"; 
 
 wait for 40 ns;

 X_TB <= "1110";
 Y_TB <= "0101"; 
 Z_TB <= "0111";

 wait for 40 ns;

end process;

end architecture;