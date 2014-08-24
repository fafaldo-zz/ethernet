
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

entity MAC_source is
	port( data_in : in std_logic_vector(7 downto 0);
			enable : in std_logic;
			reset : in std_logic;
			clk : in std_logic;
			source_MAC : out std_logic_vector(47 downto 0);
			
			test : out std_logic_vector(7 downto 0)
		 );
end MAC_source;

architecture Behavioral of MAC_source is

signal address_counter : std_logic_vector(10 downto 0) := (others=>'0');
signal temp : std_logic_vector(47 downto 0);

begin
	
	source_MAC <= temp;
	test <= temp(47 downto 40);

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
				temp <= (others=>'0');
			elsif address_counter = 8 then
				temp(47 downto 40) <= data_in;
			elsif address_counter = 13 then
				temp(39 downto 32) <= data_in;
			elsif address_counter = 9 then
				temp(31 downto 24) <= data_in;
			elsif address_counter = 10 then
				temp(23 downto 16) <= data_in;
			elsif address_counter = 11 then
				temp(15 downto 8) <= data_in;
			elsif address_counter = 12 then
				temp(7 downto 0) <= data_in;
			end if;
		end if;
	end process;

end Behavioral;