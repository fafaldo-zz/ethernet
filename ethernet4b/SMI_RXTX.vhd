----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:25:02 03/04/2014 
-- Design Name: 
-- Module Name:    SMI_RXTX - Behavioral 
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

entity SMI_RXTX is
    Port ( data_in : in  STD_LOGIC_VECTOR (15 downto 0);
           data_out : out  STD_LOGIC_VECTOR (15 downto 0) := (others=>'0');
           phy_addr : in  STD_LOGIC_VECTOR (4 downto 0);
           reg_addr : in  STD_LOGIC_VECTOR (4 downto 0);
           write_read : in  STD_LOGIC;
           strt : in  STD_LOGIC;
           busy : out  STD_LOGIC := '0';
			  reset : in STD_LOGIC;
			  clk : in STD_LOGIC;
			  clk_div : in STD_LOGIC;
			  MDC : out STD_LOGIC := 'Z';
			  MDIO : inout STD_LOGIC := 'Z');
end SMI_RXTX;

architecture Behavioral of SMI_RXTX is

type state_type is (IDLE, INITIATION, PREAMBLE, START, OPERATION, PHY_ADDRESS, REGISTER_ADDRESS, WRITE_BREAK, READ_BREAK, WRITE_DATA, READ_DATA, FINISH); 
signal state, next_state : state_type;

signal latched_data : std_logic_vector(15 downto 0) := (others=>'0');
signal latched_phy_addr : std_logic_vector(4 downto 0) := (others=>'0');
signal latched_reg_addr : std_logic_vector(4 downto 0) := (others=>'0');
signal latched_write_read : std_logic := '1';

signal busy_in : std_logic := '0';

begin

	SYNC_PROC: process (clk)
   begin
      if (clk'event and clk = '1') then
         if (reset = '1') then
            state <= IDLE;
         else
            state <= next_state;
         end if;        
      end if;
   end process;
	
	MDC <= clk_div when busy_in = '1' else 'Z';
   busy <= busy_in;
	
	OUTPUT_DECODE: process (clk, clk_div, state, strt)
	
	variable counter : integer := 0;
	
   begin
		
		if(state = IDLE) then
         if(clk'event and clk = '1')
         then
            MDIO <= 'Z';
            busy_in <= '0';
            if (clk'event and clk = '1' and strt = '1') then
               next_state <= INITIATION;
            end if;
         end if;
			
		elsif(state = INITIATION) then
			if(clk'event and clk = '1') then
				latched_data <= data_in;
				latched_phy_addr <= phy_addr;
				latched_reg_addr <= reg_addr;
				latched_write_read <= write_read;
				busy <= '1';
				busy_in <= '1';
				next_state <= PREAMBLE;
			end if;
			
		elsif(state = PREAMBLE) then
			if (clk_div'event and clk_div = '0') then
				if(counter < 31) then
					MDIO <= '1';
					counter := counter+1;
				else
					 MDIO <= '1';
					 counter := 0;
					 next_state <= START;
				end if;
			end if;
			
      elsif(state = START) then
			if(clk_div'event and clk_div = '0') then
				if(counter = 0) then
					 MDIO <= '0';
					 counter := counter+1;
				else
					 MDIO <= '1';
					 counter := 0;
					 next_state <= OPERATION;
				end if;
			end if;
			
		elsif(state = OPERATION) then
			if(clk_div'event and clk_div = '0') then
				if(latched_write_read = '1') then
					if(counter = 0) then
						MDIO <= '0';
						counter := counter+1;
					else
						MDIO <= '1';
						counter := 0;
						next_state <= PHY_ADDRESS;
					end if;
				else
					if(counter = 0) then
						MDIO <= '1';
						counter := counter+1;
					else
						MDIO <= '0';
						counter := 0;
						next_state <= PHY_ADDRESS;
					end if;
				end if;
			end if;
			
		elsif(state = PHY_ADDRESS) then
			if(clk_div'event and clk_div = '0') then
				if(counter = 0) then MDIO <= latched_phy_addr(0); counter := counter+1;
				elsif(counter = 1) then MDIO <= latched_phy_addr(1); counter := counter+1;
				elsif(counter = 2) then MDIO <= latched_phy_addr(2); counter := counter+1;
				elsif(counter = 3) then MDIO <= latched_phy_addr(3); counter := counter+1;
				elsif(counter = 4) then MDIO <= latched_phy_addr(4); counter := 0; next_state <= REGISTER_ADDRESS;
				end if;
			end if;
			
		elsif(state = REGISTER_ADDRESS) then
			if(clk_div'event and clk_div = '0') then
				if(counter = 0) then MDIO <= latched_reg_addr(0); counter := counter+1;
				elsif(counter = 1) then MDIO <= latched_reg_addr(1); counter := counter+1;
				elsif(counter = 2) then MDIO <= latched_reg_addr(2); counter := counter+1;
				elsif(counter = 3) then MDIO <= latched_reg_addr(3); counter := counter+1;
				elsif(counter = 4) then MDIO <= latched_reg_addr(4); counter := 0; 
					if(latched_write_read = '1') then 
						next_state <= WRITE_BREAK;
					else
						next_state <= READ_BREAK;
					end if;
				end if;
			end if;
			
		elsif(state = WRITE_BREAK) then
			if(clk_div'event and clk_div = '0') then
				if(counter = 0) then
					MDIO <= '0';
					counter := counter+1;
				else
					MDIO <= '0';
					counter := 0;
					next_state <= WRITE_DATA;
				end if;
			end if;
			
		elsif(state = WRITE_DATA) then
			if(clk_div'event and clk_div = '0') then
				if(counter < 15) then
					MDIO <= latched_data(counter);
					counter := counter+1;
				else
					MDIO <= latched_data(counter);
					counter := 0;
					next_state <= FINISH;
				end if;
			end if;
			 
		elsif(state = READ_BREAK) then
			if(clk_div'event and clk_div = '0') then
				if(counter = 0) then
					MDIO <= 'Z';
					counter := counter+1;
				elsif(counter = 1) then
					MDIO <= 'Z';
					counter := counter+1;
				else
					MDIO <= 'Z';
					counter := 0;
					next_state <= READ_DATA;
				end if;
			end if;
			 
		elsif(state = READ_DATA) then
			if(clk_div'event and clk_div = '1') then
				if(counter < 15) then
					data_out(counter) <= MDIO;
					counter := counter+1;
				else
					data_out(counter) <= MDIO;
					counter := 0;
					next_state <= FINISH;
				end if;
			end if;
			
		elsif(state = FINISH) then
			if(clk_div'event and clk_div = '0') then			
				MDIO <= 'Z';
				busy_in <= '0';
				next_state <= IDLE;
			end if;
 
      end if;
		
   end process;

end Behavioral;

