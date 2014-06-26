library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity vga_display is
	Port ( 	  char : out  STD_LOGIC_VECTOR(7 downto 0) := (others=>'0');
				  char_we : out  STD_LOGIC := '0';
				  clk : in  STD_LOGIC;
				  ram_enable : out STD_LOGIC := '1';
				  ram_output : in STD_LOGIC_VECTOR(7 downto 0);
				  start : in STD_LOGIC;
				  reset : in STD_LOGIC);
end vga_display;

architecture Behavioral of vga_display is

type state_type is (IDLE, GET_DATA, START_RISING_EDGE, KEEP_RISING_EDGE, START_FALLING_EDGE); 
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
			ram_enable <= '0';
		elsif state = GET_DATA then
			char <= (others=>'0');
         char_we <= '0';
			ram_enable <= '1';
      elsif state = START_RISING_EDGE then
			ram_enable <= '0';
			char_we <= '1';
			case (ram_output(7 downto 4)) is
				when "0000" =>
					char <= x"30";
				when "0001" =>
					char <= x"31";
				when "0010" =>
					char <= x"32";
				when "0011" =>
					char <= x"33";
				when "0100" =>
					char <= x"34";
				when "0101" =>
					char <= x"35";
				when "0110" =>
					char <= x"36";
				when "0111" =>
					char <= x"37";
				when "1000" =>
					char <= x"38";
				when "1001" =>
					char <= x"39";
				when "1010" =>
					char <= x"61";
				when "1011" =>
					char <= x"62";
				when "1100" =>
					char <= x"63";
				when "1101" =>
					char <= x"64";
				when "1110" =>
					char <= x"65";
				when "1111" =>
					char <= x"66";
				when others =>
					char <= x"00";
			end case;
		elsif state = KEEP_RISING_EDGE then
			ram_enable <= '0';
			char_we <= '1';
			case (ram_output(3 downto 0)) is
				when "0000" =>
					char <= x"30";
				when "0001" =>
					char <= x"31";
				when "0010" =>
					char <= x"32";
				when "0011" =>
					char <= x"33";
				when "0100" =>
					char <= x"34";
				when "0101" =>
					char <= x"35";
				when "0110" =>
					char <= x"36";
				when "0111" =>
					char <= x"37";
				when "1000" =>
					char <= x"38";
				when "1001" =>
					char <= x"39";
				when "1010" =>
					char <= x"61";
				when "1011" =>
					char <= x"62";
				when "1100" =>
					char <= x"63";
				when "1101" =>
					char <= x"64";
				when "1110" =>
					char <= x"65";
				when "1111" =>
					char <= x"66";
				when others =>
					char <= x"00";
			end case;
		elsif state = START_FALLING_EDGE then
			ram_enable <= '0';
			char_we <= '0';
         char <= x"00";
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
            next_state <= KEEP_RISING_EDGE;
			when KEEP_RISING_EDGE =>
				next_state <= START_FALLING_EDGE;
         when START_FALLING_EDGE =>
				next_state <= IDLE;
         when others =>
            next_state <= IDLE;
      end case;      
   end process;
	
end Behavioral;

