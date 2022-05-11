library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA is
	Port ( 	A 		: in STD_LOGIC;
				B 		: in STD_LOGIC;
				Cin	: in STD_LOGIC;
				S		: out STD_LOGIC;
				Cout	: out STD_LOGIC	);
end FA;

architecture Behavioral of FA is
	signal xor_ab : std_logic;
	signal and_ab : std_logic;
	
begin
	xor_ab <= A xor B;
	and_ab <= A and B;
	-- S(i) = A(i) xor B(i) xor C(i)
	S <= xor_ab xor Cin;
	-- C(i+1) = A(i) and B(i) or C(i) and (A(i) xor B(i))
	Cout <= and_ab or (Cin and xor_ab);
	
end Behavioral;