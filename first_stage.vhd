entity first_stage is 
port ( a , b , c : in bit_vector (3 downto 0);
      sum , carry: out bit_vector (3 downto 0));
end entity ;

architecture flow of first_stage is 

-- component declaration: 

component FA is 
port(A , B , cin : in bit;
     sum , cout : out bit);
end component;

begin 

FA1 : FA 
port map (a(0), b(0), c(0), sum(0), carry(0));

FA2 : FA 
port map (a(1), b(1), c(1), sum(1), carry(1));

FA3 : FA 
port map (a(2), b(2), c(2), sum(2), carry(2));

FA4 : FA 
port map (a(3), b(3), c(3), sum(3), carry(3));

end architecture;
