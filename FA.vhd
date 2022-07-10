entity FA is
port(A , B , cin : in bit;
     sum , cout : out bit);
end entity;

architecture flow of FA is

-- component declaration: 

component HA is
port(A , B : in bit;
     sum , carry: out bit);
end component;

signal sum1, carry1, carry2: bit;

begin
HA1 : HA
port map (A, B, sum1, carry1);

HA2 : HA
port map (sum1, cin, sum, carry2);

cout <= carry1 or carry2;

end architecture;