
-- VHDL Instantiation Created from source file header_display.vhd -- 11:37:10 03/23/2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT header_display
	PORT(
		tx_busy : IN std_logic;
		busy : IN std_logic;
		clk : IN std_logic;
		ram_output : IN std_logic_vector(7 downto 0);
		start : IN std_logic;
		reset : IN std_logic;          
		char : OUT std_logic_vector(7 downto 0);
		char_we : OUT std_logic;
		ram_clk : OUT std_logic;
		ram_enable : OUT std_logic;
		ram_address : OUT std_logic_vector(11 downto 0)
		);
	END COMPONENT;

	Inst_header_display: header_display PORT MAP(
		char => ,
		char_we => ,
		tx_busy => ,
		busy => ,
		clk => ,
		ram_clk => ,
		ram_enable => ,
		ram_address => ,
		ram_output => ,
		start => ,
		reset => 
	);


