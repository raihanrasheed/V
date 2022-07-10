entity system is
port(x, y, z : in bit_vector(3 downto 0);
     sum : out bit_vector(4 downto 0);
     carry_out : out bit);
end entity;

architecture flow of system is

component first_Stage is
port ( a , b , c : in bit_vector (3 downto 0);
      sum , carry: out bit_vector (3 downto 0));
end component;

component Second_stage is
port (s, c : in bit_vector(3 downto 0);
     sum: out bit_vector(4 downto 0);
     cout : out bit);
end component;

signal sum1, ca : bit_vector(3 downto 0);

begin 

stage1 : first_Stage
port map (x, y, z, sum1, ca);

stage2 : Second_stage
port map (sum1, ca, sum ,carry_out);

end architecture;