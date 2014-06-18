----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:18:59 03/21/2014 
-- Design Name: 
-- Module Name:    MII_RX - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MII_RX is
    Port ( recv_data : in  STD_LOGIC_VECTOR (3 downto 0);
           recv_strobe : in  STD_LOGIC;
           recv_clock : in  STD_LOGIC;
           recv_error : in  STD_LOGIC;
			  clk : in STD_LOGIC;
			  reset : in STD_LOGIC;
			  ram_clk : in STD_LOGIC;
			  ram_enable : in STD_LOGIC;
           data_received : out  STD_LOGIC := '0';
			  busy : out STD_LOGIC;
			  ram_output : out STD_LOGIC_VECTOR(3 downto 0);
           test : out STD_LOGIC_VECTOR(7 downto 0));
end MII_RX;

architecture Behavioral of MII_RX is

constant ADDR_WIDTH : integer := 12;
constant DATA_WIDTH : integer := 4; 

type frame_ram is array (2**ADDR_WIDTH-1 downto 0) of std_logic_vector (DATA_WIDTH-1 downto 0);
signal ram: frame_ram;

signal data_received_in : STD_LOGIC := '0';
signal address_counter : unsigned (ADDR_WIDTH-1 downto 0) := (others=>'0');
signal read_address_counter : UNSIGNED(ADDR_WIDTH-1 downto 0) := (others=>'0');

signal busy_in : STD_LOGIC := '0';

begin
	
	busy <= busy_in;
	data_received <= data_received_in;
   test <= std_logic_vector(read_address_counter(7 downto 0));
	
--	process (recv_strobe)
--	begin
--		if rising_edge(recv_strobe) then  
--			if reset='1' then   
--				busy_in <= '0';
--			else
--				busy_in <= '1';
--			end if;
--		elsif falling_edge(recv_strobe) then  
--			if reset='1' then   
--				busy_in <= '0';
--			else
--				busy_in <= '0';
--			end if;
--		end if;
--	end process;
	
	process (recv_strobe)
	begin
		if falling_edge(recv_strobe) then  
			if reset='1' then   
				data_received_in <= '0';
			else
				data_received_in <= '1';
			end if;
		end if;
	end process;

	process (recv_clock)
	begin
		if rising_edge(recv_clock) then
			if (recv_strobe = '1') then
				if (address_counter = 0 and read_address_counter = 0) or address_counter /= (read_address_counter-1) then
					ram(TO_INTEGER(address_counter)) <= recv_data;
					address_counter <= address_counter + 1;
				end if;
			end if;
		end if;
	end process;

	process (clk)
	begin
		if rising_edge(clk) then
			if (ram_enable = '1') then
				if read_address_counter /= address_counter then
					ram_output <= ram(TO_INTEGER(read_address_counter));
					read_address_counter <= read_address_counter+1;
				end if;
			end if;
		end if;
	end process;

end Behavioral;

