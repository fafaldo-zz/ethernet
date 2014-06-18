----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:21:45 03/21/2014 
-- Design Name: 
-- Module Name:    header_display - Behavioral 
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

entity header_display is
    Port ( char : out  STD_LOGIC_VECTOR(7 downto 0) := (others=>'0');
           char_we : out  STD_LOGIC := '0';
           clk : in  STD_LOGIC;
			  ram_clk : out STD_LOGIC := '0';
			  ram_enable : out STD_LOGIC := '1';
			  ram_output : in STD_LOGIC_VECTOR(3 downto 0);
			  start : in STD_LOGIC;
			  reset : in STD_LOGIC);
end header_display;

architecture Behavioral of header_display is

type state_type is (IDLE, GET_DATA, START_RISING_EDGE, START_FALLING_EDGE); 
signal state, next_state : state_type; 

signal busy_in : STD_LOGIC := '0';

begin

	process (clk)
	begin
		if rising_edge(clk) then  
			if reset='1' then   
				busy_in <= '0';
			elsif start = '1' then
				busy_in <= '1';
			elsif state = IDLE then
				busy_in <= '0';
			else
				busy_in <= busy_in;
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

   OUTPUT_DECODE: process (state, ram_output)
   begin
      if state = IDLE then
         char <= (others=>'0');
         char_we <= '0';
			ram_clk <= '0';
			ram_enable <= '0';
		elsif state = GET_DATA then
			char <= (others=>'0');
         char_we <= '0';
			ram_enable <= '1';
			ram_clk <= '1'; -- zobaczymy czy zadzia³a, mo¿e byæ za póŸno
      elsif state = START_RISING_EDGE then
			ram_clk <= '0';
			ram_enable <= '0';
			char_we <= '1';
         char <= "0000" & ram_output; -- mo¿na? zrobiæ coœ do przerabiania na ASCII
		elsif state = START_FALLING_EDGE then
			ram_clk <= '0';
			ram_enable <= '0';
			char_we <= '0';
         char <= "0000" & ram_output;
      end if;
   end process;
 
   NEXT_STATE_DECODE: process (state, start, clk)
   begin
      next_state <= state;  
      case (state) is
         when IDLE =>
            if start = '1' then
               next_state <= GET_DATA;
            end if;
			when GET_DATA =>
				next_state <= START_RISING_EDGE;
         when START_RISING_EDGE =>
            next_state <= START_FALLING_EDGE;
         when START_FALLING_EDGE =>
				next_state <= IDLE;
         when others =>
            next_state <= IDLE;
      end case;      
   end process;
	
end Behavioral;

