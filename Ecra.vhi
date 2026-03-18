
-- VHDL Instantiation Created from source file Ecra.vhd -- 19:23:38 11/04/2024
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Ecra
	PORT(
		saldo : IN std_logic_vector(7 downto 0);
		valor_debito : IN std_logic_vector(7 downto 0);
		novo_saldo : IN std_logic_vector(7 downto 0);
		par : IN std_logic;          
		ecra : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_Ecra: Ecra PORT MAP(
		saldo => ,
		valor_debito => ,
		novo_saldo => ,
		par => ,
		ecra => 
	);


