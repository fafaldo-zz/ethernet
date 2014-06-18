----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:18:15 03/10/2014 
-- Design Name: 
-- Module Name:    button - Behavioral 
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

entity button is
    Port ( clk : in  STD_LOGIC;
           btn : in  STD_LOGIC;
           strt : out  STD_LOGIC := '0');
end button;

architecture Behavioral of button is

signal counter : std_logic := '0';

begin

   proc : process(clk)
   begin
      if(clk'event and clk = '1')
      then
      
      if(counter = '1')
      then
         strt <= '0';
      end if;
      
         if(btn = '1')
         then
            if(counter = '0')
            then
               strt <= '1';
               counter <= '1';
            else
               strt <= '0';
            end if;
         end if;
      end if;
   end process;


end Behavioral;

