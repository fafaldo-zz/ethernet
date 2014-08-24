
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

entity CU is
	port( data_in : in std_logic_vector(7 downto 0);
			clk : in std_logic;
			start : in std_logic;
			EOF : in std_logic;
			
			reset : in std_logic;
			enable : out std_logic;
			POP : out std_logic
		 );
end CU;

architecture Behavioral of CU is

type state_type is (IDLE, WORKING, FINISHED); 
signal state, next_state : state_type; 

signal address_counter : std_logic_vector(10 downto 0) := (others=>'0');

begin

	POP <= '0' when state = IDLE else '1' when (state = WORKING and next_state = WORKING) else '0';
	
	process (clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				enable <= '0';
			elsif state = WORKING and next_state = WORKING then
				enable <= '1';
			elsif state = FINISHED and next_state = FINISHED then
				enable <= '0';
			end if;
		end if;
	end process;

	process (clk)
   begin
      if rising_edge(clk) then
         if reset = '1' then
            state <= IDLE;
         else
            state <= next_state;
         end if;        
      end if;
   end process;
	
	process (state, start, EOF)
   begin
      next_state <= state;
      case (state) is
         when IDLE =>
            if start = '1' then
               next_state <= WORKING;
            end if;
         when WORKING =>
            if EOF = '1' then
               next_state <= FINISHED;
            end if;
         when FINISHED =>
            next_state <= FINISHED;
         when others =>
            next_state <= IDLE;
      end case;      
   end process;

end Behavioral;