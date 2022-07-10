entity HA is
port(a, b:in bit;
     sum, carry : out bit);
end entity;

architecture flow of HA is
begin
sum <= a xor b;
carry <= a and b;
end architecture;