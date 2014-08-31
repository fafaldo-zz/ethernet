
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

entity IPv4_destination is
	port( data_in : in std_logic_vector(7 downto 0);
			enable : in std_logic;
			reset : in std_logic;
			clk : in std_logic;
			destination : out std_logic_vector(31 downto 0)
		 );
end IPv4_destination;

architecture Behavioral of IPv4_destination is

signal address_counter : std_logic_vector(10 downto 0) := (others=>'0');

begin

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
				destination <= (others=>'0');
			elsif address_counter = 31 then
				destination(31 downto 24) <= data_in;
			elsif address_counter = 32 then
				destination(23 downto 16) <= data_in;
			elsif address_counter = 33 then
				destination(15 downto 8) <= data_in;
			elsif address_counter = 34 then
				destination(7 downto 0) <= data_in;
			end if;
		end if;
	end process;

end Behavioral;