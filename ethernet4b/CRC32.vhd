----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:08:00 08/21/2014 
-- Design Name: 
-- Module Name:    CRC32 - Behavioral 
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

entity CRC32 is
	port( data_in : in std_logic_vector(7 downto 0);
			enable : in std_logic;
			reset : in std_logic;
			clk : in std_logic;
			CRC : out std_logic_vector(31 downto 0)
		 );
end CRC32;

architecture Behavioral of CRC32 is

type state_type is (IDLE, BEFORE_BUFFER_FULL, WORKING, FINISHED); 
signal state, next_state : state_type; 

signal temp_buffer : std_logic_vector(39 downto 0) := "1010101010101010101010101010101010101010";
signal address_counter : std_logic_vector(10 downto 0) := (others=>'0');

signal wielomian : std_logic_vector(32 downto 0) := "100000100110000010001110110110111";

signal xorowany_buffer : std_logic_vector(39 downto 0) := (others=>'0');

signal temp1 : std_logic_vector(39 downto 0) := (others=>'0');
signal temp2 : std_logic_vector(39 downto 0) := (others=>'0');
signal temp3 : std_logic_vector(39 downto 0) := (others=>'0');
signal temp4 : std_logic_vector(39 downto 0) := (others=>'0');
signal temp5 : std_logic_vector(39 downto 0) := (others=>'0');
signal temp6 : std_logic_vector(39 downto 0) := (others=>'0');
signal temp7 : std_logic_vector(39 downto 0) := (others=>'0');

begin

	temp1 <= temp_buffer xor (wielomian & "0000000") when temp_buffer(39) = '1' else temp_buffer;
	temp2 <= temp1 xor ("0" & wielomian & "000000") when temp1(38) = '1' else temp1;
	temp3 <= temp2 xor ("00" & wielomian & "00000") when temp2(37) = '1' else temp2;
	temp4 <= temp3 xor ("000" & wielomian & "0000") when temp3(36) = '1' else temp3;
	temp5 <= temp4 xor ("0000" & wielomian & "000") when temp4(35) = '1' else temp4;
	temp6 <= temp5 xor ("00000" & wielomian & "00") when temp5(34) = '1' else temp5;
	temp7 <= temp6 xor ("000000" & wielomian & "0") when temp6(33) = '1' else temp6;
	xorowany_buffer <= temp7 xor ("0000000" & wielomian) when temp7(32) = '1' else temp7;
								 
	CRC <= not (
			 xorowany_buffer(24) & xorowany_buffer(25) & xorowany_buffer(26) & xorowany_buffer(27) &
			 xorowany_buffer(28) & xorowany_buffer(29) & xorowany_buffer(30) & xorowany_buffer(31)
			 &
			 xorowany_buffer(16) & xorowany_buffer(17) & xorowany_buffer(18) & xorowany_buffer(19) &
			 xorowany_buffer(20) & xorowany_buffer(21) & xorowany_buffer(22) & xorowany_buffer(23)
			 &
			 xorowany_buffer(8) & xorowany_buffer(9) & xorowany_buffer(10) & xorowany_buffer(11) &
			 xorowany_buffer(12) & xorowany_buffer(13) & xorowany_buffer(14) & xorowany_buffer(15)
			 &
			 xorowany_buffer(0) & xorowany_buffer(1) & xorowany_buffer(2) & xorowany_buffer(3) &
			 xorowany_buffer(4) & xorowany_buffer(5) & xorowany_buffer(6) & xorowany_buffer(7)
			 );

	process (clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
				address_counter <= (others=>'0');
			elsif enable = '1' then
				address_counter <= address_counter+1;
			end if;
		end if;
	end process;

	process (clk) 
	begin 
		if rising_edge(clk) then  
			if enable = '1' then
				if (state = BEFORE_BUFFER_FULL and next_state /= WORKING) or state = IDLE then
					temp_buffer <= temp_buffer(31 downto 0) & (not( data_in(0) & data_in(1) & data_in(2) & data_in(3)
																					& data_in(4) & data_in(5) & data_in(6) & data_in(7)));
				elsif state = BEFORE_BUFFER_FULL and next_state = WORKING then
					temp_buffer <= temp_buffer(31 downto 0) & data_in(0) & data_in(1) & data_in(2) & data_in(3)
																			  & data_in(4) & data_in(5) & data_in(6) & data_in(7);
				else
					temp_buffer <= xorowany_buffer(31 downto 0) & data_in(0) & data_in(1) & data_in(2) & data_in(3)
																			  & data_in(4) & data_in(5) & data_in(6) & data_in(7);
				end if;
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
	
	process (state, enable, address_counter)
   begin
      next_state <= state;
      case (state) is
         when IDLE =>
            if enable = '1' then
               next_state <= BEFORE_BUFFER_FULL;
            end if;
         when BEFORE_BUFFER_FULL =>
            if address_counter = 4 then
               next_state <= WORKING;
            end if;
			when WORKING =>
				if enable = '0' then
					next_state <= FINISHED;
				end if;
			when FINISHED =>
				if enable = '1' then
					next_state <= BEFORE_BUFFER_FULL;
				end if;
         when others =>
            next_state <= IDLE;
      end case;      
   end process;

end Behavioral;

