
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

entity CUnit is
	port( clk : in std_logic;
	
			data_in : in std_logic_vector(7 downto 0);
			empty : in std_logic;
			EOF : in std_logic;
			ICMP_recognized : in std_logic;
			
			reset : in std_logic;
			
			frame_reset : out std_logic;
			enable : out std_logic;
			POP : out std_logic;
			
			test : out std_logic_vector(7 downto 0)
		 );
end CUnit;

architecture Behavioral of CUnit is

type state_type is (IDLE, POP_ON, ENABLE_ON, WAIT_FOR_NEXT, UNKNOWN_WAIT_FOR_NEXT, UNKNOWN_POP_ON, UNKNOWN_ENABLE_ON, RESET_ON, FINISHED); 
signal state, next_state : state_type; 

signal address_counter : std_logic_vector(10 downto 0) := (others=>'0');

begin

	enable <= '1' when state = ENABLE_ON else '0';
	frame_reset <= '1' when state = RESET_ON else '0';
	POP <= '1' when state = POP_ON or state = UNKNOWN_POP_ON else '0';
	
--	test <= "00000001" when state = IDLE else
--			  "00000010" when state = POP_ON else
--			  "00000100" when state = ENABLE_ON else
--			  "00001000" when state = WAIT_FOR_NEXT else
--			  "00010000" when state = UNKNOWN_WAIT_FOR_NEXT else
--			  "00100000" when state = UNKNOWN_POP_ON else
--			  "01000000" when state = UNKNOWN_ENABLE_ON else
--			  "10000000" when state = RESET_ON;

	process (clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				test(0) <= '0';
			elsif state = RESET_ON then
				test(0) <= '1';
			end if;
		end if;
	end process;
	
	process (clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				test(1) <= '0';
			elsif empty = '0' then
				test(1) <= '1';
			end if;
		end if;
	end process;
	
--	process (clk)
--	begin
--		if rising_edge(clk) then
--			if reset = '1' then
--				enable <= '0';
--			elsif state = ENABLE_ON then
--				enable <= '1';
--			else
--				enable <= '0';
--			end if;
--		end if;
--	end process;
--	
--	process (clk)
--	begin
--		if rising_edge(clk) then
--			if reset = '1' then
--				frame_reset <= '0';
--			elsif state = RESET_ON then
--				frame_reset <= '1';
--			else
--				frame_reset <= '0';
--			end if;
--		end if;
--	end process;
--	
--	process (clk)
--	begin
--		if rising_edge(clk) then
--			if reset = '1' then
--				POP <= '0';
--			elsif state = POP_ON or state = UNKNOWN_POP_ON then
--				POP <= '1';
--			else
--				POP <= '0';
--			end if;
--		end if;
--	end process;

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
	
	process (clk)
   begin
      if rising_edge(clk) then
         if reset = '1' or state = RESET_ON then
            address_counter <= (others=>'0');
         elsif state = ENABLE_ON or state = UNKNOWN_ENABLE_ON then
            address_counter <= address_counter+1;
         end if;        
      end if;
   end process;
	
	process (state, empty, EOF, address_counter, ICMP_recognized)
   begin
      next_state <= state;
      case (state) is
         when IDLE =>
            if empty = '0' then
               next_state <= POP_ON;
            end if;
         when POP_ON =>
            next_state <= ENABLE_ON;
         when ENABLE_ON =>
            next_state <= WAIT_FOR_NEXT;
			when WAIT_FOR_NEXT =>
				if (address_counter < 40 or (address_counter >= 40 and ICMP_recognized = '1')) and empty = '0' and EOF = '0' then
					next_state <= POP_ON;
				elsif EOF = '1' then
					next_state <= RESET_ON;
				elsif address_counter >= 40 and ICMP_recognized = '0' then
					next_state <= UNKNOWN_WAIT_FOR_NEXT;
				end if;
			when RESET_ON =>
				next_state <= IDLE;
			when UNKNOWN_WAIT_FOR_NEXT =>
				if EOF = '1' then
					next_state <= RESET_ON;
				elsif empty = '0' and EOF = '0' then
					next_state <= UNKNOWN_POP_ON;
				end if;
			when UNKNOWN_POP_ON =>
				next_state <= UNKNOWN_ENABLE_ON;
			when UNKNOWN_ENABLE_ON =>
				next_state <= UNKNOWN_WAIT_FOR_NEXT;
         when others =>
            next_state <= IDLE;
      end case;      
   end process;

end Behavioral;