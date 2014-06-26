
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity control_unit is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (3 downto 0);
           data_received_in : in  STD_LOGIC;
           interrupt : in  STD_LOGIC;
           crc_en : out  STD_LOGIC := '0';
			  ethertype_en : out STD_LOGIC := '0';
			  ram_en : out STD_LOGIC := '0');
end control_unit;

architecture Behavioral of control_unit is

type state_type is (IDLE, WORKING, INTERRUPTED); 
signal state, next_state : state_type;

signal counter : std_logic_vector(11 downto 0) := (others=>'0');

begin

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
	
	process (state)
	begin
		if state = IDLE then
			crc_en <= '0';
		elsif state = WORKING then
			crc_en <= '1';
		elsif state = INTERRUPTED then
			crc_en <= '0';
		end if;
	end process;
	
	process (state)
	begin
		if state = IDLE then
			ethertype_en <= '0';
		elsif state = WORKING then
			ethertype_en <= '1';
		elsif state = INTERRUPTED then
			ethertype_en <= '0';
		end if;
	end process;
	
	process (state)
	begin
		if state = IDLE then
			ram_en <= '0';
		elsif state = WORKING then
			ram_en <= '1';
		elsif state = INTERRUPTED then
			ram_en <= '0';
		end if;
	end process;

   process (state, clk)
   begin
		if rising_edge(clk) then
			if state = IDLE then
				counter <= (others=>'0');
			elsif state = WORKING then
				counter <= counter + 1;
			elsif state = INTERRUPTED then
				counter <= counter + 1;
			end if;
		end if;
   end process;
 
   process (state, clk, data_received_in, interrupt)
   begin
      next_state <= state;  
      case (state) is
         when IDLE =>
            if data_received_in = '1' then
               next_state <= WORKING;
            end if;
			when WORKING =>
				if interrupt = '1' then
					next_state <= INTERRUPTED;
				end if;
         when INTERRUPTED =>
				next_state <= IDLE;
         when others =>
            next_state <= IDLE;
      end case;      
   end process;

end Behavioral;

