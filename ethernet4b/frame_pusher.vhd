----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:30:21 08/17/2014 
-- Design Name: 
-- Module Name:    frame_pusher - Behavioral 
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

entity frame_pusher is
    Port ( clk : in  STD_LOGIC;
           start : in  STD_LOGIC;
           PUSH : out  STD_LOGIC;
           DATA : out  STD_LOGIC_VECTOR (7 downto 0));
end frame_pusher;

architecture Behavioral of frame_pusher is

type state_type is (IDLE, PUSH_ON, PUSH_OFF); 
signal state, next_state : state_type;

signal reset : std_logic := '0';

signal dane : std_logic_vector(95 downto 0) := X"aaaaaaaaaaaaaaa";
signal counter : std_logic_vector(10 downto 0) := (others=>'0');

begin


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
	
	process(state)
	begin
		if state = PUSH_ON then
			PUSH <= '1';
		else 
			PUSH <= '0';
		end if;
	end process;
 
   NEXT_STATE_DECODE: process (state)
   begin
      next_state <= state;
      case (state) is
         when IDLE =>
            if start = '1' then
               next_state <= PUSH_ON;
            end if;
         when PUSH_ON =>
            next_state <= PUSH_OFF;
         when PUSH_OFF =>
				if ??? then
					next_state <= IDLE;
				else
					next_state <= PUSH_ON;
         when others =>
            next_state <= IDLE;
      end case;      
   end process;


end Behavioral;

