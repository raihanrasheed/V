entity Second_stage is
port (s, c : in bit_vector(3 downto 0);
     sum: out bit_vector(4 downto 0);
     cout : out bit);
end entity;

architecture flow of Second_stage is
 
 -- component declaration: 

component FA is
port(A , B , cin : in bit;
     sum , cout : out bit);
end component; 

signal c1,c2, c3, c4 : bit;

begin

FA1 : FA
port map (s(0),'0', '0', sum(0), c1);

FA2 : FA
port map (s(1), c(0), c1, sum(1), c2);

FA3 : FA
port map (s(2), c(1), c2, sum(2), c3);

FA4 : FA
port map (s(3),c(2), c3, sum(3), c4);

FA5 : FA
port map ('0', c(3), c4, sum(4), cout);

end architecture;