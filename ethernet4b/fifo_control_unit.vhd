
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity fifo_control_unit is

  port (
    clkA   : out  std_logic;
    clkB   : out  std_logic;
    enA    : out  std_logic;
    enB    : out  std_logic;
    weA    : out  std_logic;
    --weB    : out  std_logic;
    addrA  : out  std_logic_vector(11 downto 0);
    addrB  : out  std_logic_vector(10 downto 0);
    diA    : out  std_logic_vector(3 downto 0);
    --diB    : out  std_logic_vector(7 downto 0);
    --doA    : out std_logic_vector(3 downto 0);
    doB    : in std_logic_vector(7 downto 0);
	 
	 empty  : out std_logic;
	 full   : out std_logic;
	 data_out : out std_logic_vector(7 downto 0);
	 EOF    : out std_logic;
	 clk    : in std_logic;
	 Rx_Clk : in std_logic;
	 Rx_DV  : in std_logic;
	 Rx_D   : in std_logic_vector(3 downto 0);
	 POP    : in std_logic;
	 test   : out std_logic_vector(7 downto 0)
  );

end fifo_control_unit;

architecture behavioral of fifo_control_unit is

  signal write_address_counter : std_logic_vector(11 downto 0) := (others=>'0');
  signal read_address_counter : std_logic_vector(10 downto 0) := (others=>'0');
  
  signal empty_i : std_logic;
	signal full_i : std_logic;

begin

	clkA <= Rx_Clk;
	clkB <= clk;
	enB <= '1';
	enA <= Rx_DV;
	diA <= Rx_D;
	data_out <= doB;
	EOF <= '0';
	
	test <= empty_i & full_i & write_address_counter(5 downto 0);
	
	addrA <= write_address_counter;
	addrB <= read_address_counter;
	
	process (Rx_Clk)
	begin
		if rising_edge(Rx_Clk) then
			if (write_address_counter(11 downto 1) = 0 and read_address_counter = 0) or write_address_counter(11 downto 1) /= (read_address_counter-1) then
				weA <= '1';
			else
				weA <= '0';
			end if;
		end if;
	end process;
	
	process (Rx_Clk)
	begin
		if rising_edge(Rx_Clk) then
			if Rx_DV = '1' then
				if (write_address_counter(11 downto 1) = 0 and read_address_counter = 0) or write_address_counter(11 downto 1) /= (read_address_counter-1) then
					write_address_counter <= write_address_counter + 1;
				end if;
			end if;
		end if;
	end process;
	
	process (Rx_Clk)
	begin
		if rising_edge(Rx_Clk) then
			if (write_address_counter(11 downto 1) = 0 and read_address_counter = 0) or write_address_counter(11 downto 1) /= (read_address_counter-1) then
				full <= '1';
				full_i <= '1';
			else
				full <= '0';
				full_i <= '0';
			end if;
		end if;
	end process;

	process (clk)
	begin
		if rising_edge(clk) then
			if (POP = '1') then
				if read_address_counter /= write_address_counter(11 downto 1) then
					read_address_counter <= read_address_counter+1;
				end if;
			end if;
		end if;
	end process;
	
	process (clk)
	begin
		if rising_edge(clk) then
			if read_address_counter /= write_address_counter(11 downto 1) then
				empty <= '1';
				empty_i <= '1';
			else
				empty <= '0';
				empty_i <= '0';
			end if;
		end if;
	end process;
	
  
end behavioral;

							