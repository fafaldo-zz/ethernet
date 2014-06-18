----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:01:17 03/04/2014 
-- Design Name: 
-- Module Name:    SMI_divider - Behavioral 
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

entity SMI_divider is
    Port ( clk_in : in  STD_LOGIC;
           clk_out : out  STD_LOGIC := '0');
end SMI_divider;

architecture Behavioral of SMI_divider is

signal counter : std_logic_vector(3 downto 0) := "0000";
signal clk_out_sig : std_logic := '0';

begin

	clk_out <= clk_out_sig;

	process(clk_in)
	begin
		if(clk_in'event and clk_in='1') then
			if(counter < 20) then
				counter <= counter + 1;
			else
				counter <= "0000";
				clk_out_sig <= not clk_out_sig;
			end if;
		end if;
	end process;

end Behavioral;

