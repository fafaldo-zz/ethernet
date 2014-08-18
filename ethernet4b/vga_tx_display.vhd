----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:12:44 08/17/2014 
-- Design Name: 
-- Module Name:    vga_tx_display - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vga_tx_display is
    Port ( clk : in  STD_LOGIC;
           E_TX_CLK : in  STD_LOGIC;
           E_TXD : in  STD_LOGIC_VECTOR (3 downto 0);
			  E_TX_EN : in std_logic;
           Char_DI : out  STD_LOGIC_VECTOR (7 downto 0);
           Char_WE : out  STD_LOGIC;
			  reset : in std_logic);
end vga_tx_display;

architecture Behavioral of vga_tx_display is

type state_type is (IDLE, START_RISING_EDGE, KEEP_RISING_EDGE, START_FALLING_EDGE, WAIT_FOR_DOWN); 
signal state, next_state : state_type;

signal latched_data : std_logic_vector(3 downto 0) := (others=>'0'); 

begin
	
	process (E_TX_CLK)
	begin
		if rising_edge(E_TX_CLK) then
			if(E_TX_EN = '1') then
				latched_data <= E_TXD(3 downto 0);
			end if;
		end if;
	end process;
	
	SYNC_PROC: process (clk)
   begin
      if rising_edge(clk) then
         if (reset = '1') then
            state <= IDLE;
         else
            state <= next_state;
         end if;        
      end if;
   end process;

   OUTPUT_DECODE: process (state)
   begin
      if state = IDLE then
         Char_DI <= (others=>'0');
         Char_WE <= '0';
      elsif state = START_RISING_EDGE then
			Char_DI <= "0011" & latched_data;
			Char_WE <= '1';
		elsif state = START_FALLING_EDGE then
			Char_DI <= (others=>'0');
         Char_WE <= '0';
		else
			Char_DI <= (others=>'0');
         Char_WE <= '0';
      end if;
   end process;
 
   NEXT_STATE_DECODE: process (state, E_TX_CLK)
   begin
      next_state <= state;  
      case (state) is
         when IDLE =>
            if E_TX_EN = '1' and E_TX_CLK = '1' then
               next_state <= START_RISING_EDGE;
            end if;
         when START_RISING_EDGE =>
            next_state <= START_FALLING_EDGE;
         when START_FALLING_EDGE =>
				next_state <= WAIT_FOR_DOWN;
			when WAIT_FOR_DOWN => 
				if E_TX_CLK = '0' then
					next_state <= IDLE;
				end if;
         when others =>
            next_state <= IDLE;
      end case;      
   end process;


end Behavioral;

