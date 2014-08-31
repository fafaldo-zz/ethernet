
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ICMP_detector is
	port( data_in : in std_logic_vector(7 downto 0);
			enable : in std_logic;
			reset : in std_logic;
			clk : in std_logic;
			ICMP_detected : out std_logic := '0';
			
			test : out std_logic_vector(7 downto 0) := (others=>'0')
		 );
end ICMP_detector;

architecture Behavioral of ICMP_detector is

signal address_counter : std_logic_vector(10 downto 0) := (others=>'0');

signal saved : std_logic := '0';
signal test_i : std_logic_vector(7 downto 0) := (others=>'0');
signal reset_counter : std_logic_vector(7 downto 0) := (others=>'0');

begin

	test <= reset_counter;

	process (clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				address_counter <= (others=>'0');
			elsif enable = '1' then
				address_counter <= address_counter+1;
			end if;
		end if;
	end process;
	
	process (clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				ICMP_detected <= '0';
			elsif enable = '1' and address_counter = 25 and data_in = x"01" then
				ICMP_detected <= '1';
				saved <= '1';
			end if;
		end if;
	end process;
	
	process (clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				reset_counter <= reset_counter+1;
			end if;
		end if;
	end process;

end Behavioral;