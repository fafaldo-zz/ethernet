----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:27:35 03/11/2014 
-- Design Name: 
-- Module Name:    nowyRXTX - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity nowyRXTX is
   Port (  data_in : in  STD_LOGIC_VECTOR (15 downto 0);
           data_out : out  STD_LOGIC_VECTOR (15 downto 0) := (others=>'0');
           phy_addr : in  STD_LOGIC_VECTOR (4 downto 0);
           reg_addr : in  STD_LOGIC_VECTOR (4 downto 0);
           write_read : in  STD_LOGIC;
           strt : in  STD_LOGIC;
           busy : out  STD_LOGIC := '0';
			  reset : in STD_LOGIC;
			  clk : in STD_LOGIC;
			  MDC : out STD_LOGIC := 'Z';
			  MDIO : inout STD_LOGIC := 'Z');
end nowyRXTX;

architecture Behavioral of nowyRXTX is

signal latched_data : std_logic_vector(15 downto 0) := (others=>'0');
signal latched_phy_addr : std_logic_vector(4 downto 0) := (others=>'0');
signal latched_reg_addr : std_logic_vector(4 downto 0) := (others=>'0');
signal latched_write_read : std_logic := '1';
signal busy_in : std_logic := '0';

signal counter : std_logic_vector(7 downto 0) := (others=>'0');
signal bit_counter : std_logic_vector(7 downto 0) := (others=>'0');

signal clk_div : std_logic := '0';

signal read_send_data : std_logic_vector(45+1 downto 0);
signal read_receive_data : std_logic_vector(15 downto 0);
signal write_send_data : std_logic_vector(63 downto 0);

begin
	
   process (clk)
   begin
      if clk'event and clk = '1' then
         if reset = '1' then
            counter <= (others=>'0');
				clk_div <= '0';
			elsif bit_counter = 65 then
				counter <= (others=>'0');
				clk_div <= '0';
			elsif busy_in = '1' then
				if(counter = 9) then
					clk_div <= not clk_div;
					counter <= (others=>'0');
				else
					counter <= counter+1;
				end if;
			end if;
      end if;
   end process;
   
   process (clk)
   begin
      if clk'event and clk = '1' then
         if reset='1' then   
            busy_in <= '0';
         elsif strt='1' then
            busy_in <= '1';
			elsif bit_counter = 65 then
				busy_in <= '0';
			end if;
      end if;
   end process;
   
   process (clk)
   begin
		if clk'event and clk = '1' then
			if strt = '1' then
				latched_data <= data_in;
				latched_phy_addr <= phy_addr;
				latched_reg_addr <= reg_addr;
				latched_write_read <= write_read;
			end if;
		end if;
	end process;
  	  
   process (clk_div, strt)
   begin
		if strt = '1' then   
			bit_counter <= (others=>'0');
      elsif clk_div'event and clk_div = '0' then
         bit_counter <= bit_counter+1;
      end if;
   end process;
   
   process (clk_div)
   begin
      if clk_div'event and clk_div='0' then  
         if reset ='1' then 
            write_send_data <= (others => '0'); 
         elsif bit_counter = 0 then 
				write_send_data(63 downto 0) <= "11111111111111111111111111111111" & "01" & "01" & latched_phy_addr(4 downto 0) & latched_reg_addr(4 downto 0) & "ZZ" & latched_data(15 downto 0);
			elsif bit_counter > 0 and bit_counter < 65 then
				write_send_data(63 downto 0) <= write_send_data(62 downto 0) & '0';
         end if; 
      end if;
   end process;
   
   process (clk_div)
   begin
      if clk_div'event and clk_div='0' then  
         if reset ='1' then 
            read_send_data <= (others => '0'); 
         elsif bit_counter = 0 then 
				read_send_data(45 downto 0) <= "11111111111111111111111111111111" & "01" & "10" & phy_addr(4 downto 0) & reg_addr(4 downto 0);
			elsif bit_counter > 0 and bit_counter < 47 then
				read_send_data(45 downto 0) <= read_send_data(44 downto 0) & '0';
         end if; 
      end if;
   end process;
	
	process (clk_div)
	begin
		if clk_div'event and clk_div='1' then
			if reset='1' then
				read_receive_data <= (others => '0');
			elsif  latched_write_read = '0' and bit_counter > 48 and bit_counter < 65 then
				read_receive_data(15 downto 1) <= read_receive_data(14 downto 0);
				read_receive_data(0) <= MDIO;
			end if;
		end if;
	end process;
   
   busy <= busy_in;
	data_out <= read_receive_data;
	
	process (clk)
	begin
		if clk'event and clk='1' then  
			if (bit_counter > 0 and bit_counter < 65 ) and (bit_counter /= 47 and bit_counter /= 48) and latched_write_read = '1' then
				MDIO <= write_send_data(63);
			elsif (bit_counter > 0 and bit_counter < 47 ) and latched_write_read = '0' then
				MDIO <= read_send_data(45);
			else
				MDIO <= 'Z';
				end if;
		end if;
	end process;

	process (clk)
	begin
		if clk'event and clk='1' then  
			if bit_counter > 0 and bit_counter < 65 then
				MDC <= clk_div;
			else
				MDC <= 'Z';
			end if;
		end if;
	end process;

end Behavioral;

