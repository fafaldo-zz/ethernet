
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity new_tx_fifo_control_unit is

  port (
    clkA   : out  std_logic;
    clkB   : out  std_logic;
    enA    : out  std_logic;
    enB    : out  std_logic;
    --weA    : out  std_logic := '1';
    weB    : out  std_logic;
    addrA  : out  std_logic_vector(11 downto 0);
    addrB  : out  std_logic_vector(10 downto 0);
    --diA    : out  std_logic_vector(3 downto 0);
    diB    : out  std_logic_vector(7 downto 0);
    doA    : in std_logic_vector(3 downto 0);
    --doB    : in std_logic_vector(7 downto 0);
	 
	 empty  : out std_logic;
	 full   : out std_logic;
	 data_in : in std_logic_vector(7 downto 0);
	 EOF    : in std_logic;
	 clk    : in std_logic;
	 Tx_Clk : in std_logic;
	 Tx_En  : out std_logic;
	 Tx_D   : out std_logic_vector(3 downto 0);
	 PUSH    : in std_logic;
	 busy   : out std_logic := '0';
	 start : in std_logic;
	 test   : out std_logic_vector(7 downto 0)
  );

end new_tx_fifo_control_unit;

architecture behavioral of new_tx_fifo_control_unit is

	type state_type is (IDLE, TRANSMITTING, IDLE_GAP); 
   signal state, next_state : state_type;

	signal write_address_counter : std_logic_vector(10 downto 0) := (others=>'0');
	signal read_address_counter : std_logic_vector(11 downto 0) := (others=>'0');
  
	signal empty_i : std_logic;
	signal full_i : std_logic;
	
	signal write_add_simple : std_logic := '1';
	signal write_add_temp : std_logic_vector(10 downto 0) := (others=>'0');
	signal read_add_simple : std_logic := '1';
	signal read_add_temp : std_logic_vector(11 downto 0) := (others=>'0');

	signal read_address_counter_minus_two : std_logic_vector(11 downto 0) := "100000000001";
	signal read_address_counter_minus_two_temp : std_logic_vector(11 downto 0) := (others=>'0');
	
	signal Tx_En_i : std_logic := '0';
	
	signal gap_counter : std_logic_vector(7 downto 0) := (others=>'0');

begin

--	test <= second & first;


	--
	-- PRZYPISANIA WYJŒÆ DO FRAME BUFFER'A
	--
	addrA <= read_address_counter;
	addrB <= write_address_counter;
	
	clkA <= Tx_Clk; --??????
	clkB <= clk;
	enB <= PUSH;
	enA <= '1';
	diB <= data_in;
	Tx_D <= doA;
	
	
	process (clk)
   begin
      if rising_edge(clk) then
         state <= next_state;      
      end if;
   end process;
	
	
	process (state)
   begin
      next_state <= state;
      case (state) is
         when IDLE =>
            if start = '1' then
				next_state <= TRANSMITTING;
			end if;
         when TRANSMITTING =>
			if empty_i = '1' then
				next_state <= IDLE_GAP;
			end if;
         when IDLE_GAP =>
			if(gap_counter > 128) then
				next_state <= IDLE;
			end if;
         when others =>
            next_state <= IDLE;
      end case;      
   end process;
   
   process (clk)
   begin
		if state = IDLE then
			busy <= '0';
		else
			busy <= '1';
		end if;
	end process;
	
	process (clk)
	begin
		if state = TRANSMITTING then
			Tx_En <= '1';
			Tx_En_i <= '1';
		else
			Tx_En <= '0';
			Tx_En_i <= '0';
		end if;
	end process;

	process (Tx_Clk)
	begin
		if state = IDLE_GAP then
			gap_counter <= gap_counter+1;
		else
			gap_counter <= (others=>'0');
		end if;
	end process;
	
	--
	-- USTAWIANIE WRITE ENABLE A
	--
	-- tutaj nastêpuje w³aœciwe zabezpieczenie przed nadpisaniem starych danych w kolejce
	--
	process (clk)
	begin
		if rising_edge(clk) then
			if (write_address_counter = 0 and read_address_counter(11 downto 1) = 0) or write_address_counter /= read_address_counter_minus_two(11 downto 1) then
				weB <= '1';
--				wea_i <= '1';
			else
				weB <= '0';
--				wea_i <= '0';
			end if;
		end if;
	end process;
	
	
	
	-- 
	-- USTAWIANIE FLAG EMPTY I FULL
	--
	process (clk)
	begin
		if rising_edge(clk) then
			if write_address_counter = read_address_counter_minus_two(11 downto 1) then
				full <= '1';
				full_i <= '1';
			else
				full <= '0';
				full_i <= '0';
			end if;
		end if;
	end process;
	
	process (Tx_Clk)
	begin
		if rising_edge(Tx_Clk) then
			if read_address_counter(11 downto 1) = write_address_counter then
				empty <= '1';
				empty_i <= '1';
			else
				empty <= '0';
				empty_i <= '0';
			end if;
		end if;
	end process;
	
	
	
	process (clk)
	begin
		if rising_edge(clk) then
			if PUSH = '1' and state = IDLE then
				if (write_address_counter = 0 and read_address_counter(11 downto 1) = 0) or write_address_counter /= read_address_counter_minus_two(11 downto 1) then
					write_add_simple <= not write_add_simple;
				end if;
			end if;
		end if;
	end process;
	
	
							
	write_add_temp <= 		"10000000000" when (write_address_counter(9) = '1' and write_address_counter(8 downto 0) = "000000000") or (write_address_counter = "10000000000") else
							"01000000000" when write_address_counter(8) = '1' and write_address_counter(7 downto 0) = "00000000" else
							"00100000000" when write_address_counter(7) = '1' and write_address_counter(6 downto 0) = "0000000" else
							"00010000000" when write_address_counter(6) = '1' and write_address_counter(5 downto 0) = "000000" else
							"00001000000" when write_address_counter(5) = '1' and write_address_counter(4 downto 0) = "00000" else
							"00000100000" when write_address_counter(4) = '1' and write_address_counter(3 downto 0) = "0000" else
							"00000010000" when write_address_counter(3) = '1' and write_address_counter(2 downto 0) = "000" else
							"00000001000" when write_address_counter(2) = '1' and write_address_counter(1 downto 0) = "00" else
							"00000000100" when write_address_counter(1) = '1' and write_address_counter(0 downto 0) = "0" else
							"00000000010" when write_address_counter(0) = '1' else
							"00000000000";
							
	process(clk)
	begin
		if rising_edge(clk) then
			if PUSH = '1' and state = IDLE then
				if (write_address_counter = 0 and read_address_counter(11 downto 1) = 0) or write_address_counter /= read_address_counter_minus_two(11 downto 1) then
					if write_add_simple = '1' then
						write_address_counter <= write_address_counter xor "00000000001";
					else
						write_address_counter <= write_address_counter xor write_add_temp;
					end if;
				end if;
			end if;
		end if;
	end process;
	
	
	
	
	
	
	

	process (Tx_Clk)
	begin
		if rising_edge(Tx_Clk) then
			if (Tx_En_i = '1') then
				if read_address_counter(11 downto 1) /= write_address_counter then
					read_add_simple <= not read_add_simple;
				end if;
			end if;
		end if;
	end process;
	
	read_add_temp <= "100000000000" when (read_address_counter(10) = '1' and read_address_counter(9 downto 0) = "0000000000") or (read_address_counter = "100000000000") else
							"010000000000" when read_address_counter(9) = '1' and read_address_counter(8 downto 0) = "000000000" else
							"001000000000" when read_address_counter(8) = '1' and read_address_counter(7 downto 0) = "00000000" else
							"000100000000" when read_address_counter(7) = '1' and read_address_counter(6 downto 0) = "0000000" else
							"000010000000" when read_address_counter(6) = '1' and read_address_counter(5 downto 0) = "000000" else
							"000001000000" when read_address_counter(5) = '1' and read_address_counter(4 downto 0) = "00000" else
							"000000100000" when read_address_counter(4) = '1' and read_address_counter(3 downto 0) = "0000" else
							"000000010000" when read_address_counter(3) = '1' and read_address_counter(2 downto 0) = "000" else
							"000000001000" when read_address_counter(2) = '1' and read_address_counter(1 downto 0) = "00" else
							"000000000100" when read_address_counter(1) = '1' and read_address_counter(0 downto 0) = "0" else
							"000000000010" when read_address_counter(0) = '1' else
							"000000000000";
							
	process(Tx_Clk)
	begin
		if rising_edge(Tx_Clk) then
			if (Tx_En_i = '1') then
				if read_address_counter(11 downto 1) /= write_address_counter then
					if read_add_simple = '1' then
						read_address_counter <= read_address_counter xor "000000000001";
					else
						read_address_counter <= read_address_counter xor read_add_temp;
					end if;
				end if;
			end if;
		end if;
	end process;
	
	
	
	
	
	
	
	
	read_address_counter_minus_two_temp <=    "100000000000" when (read_address_counter_minus_two(10) = '1' and read_address_counter_minus_two(9 downto 0) = "0000000000") or (read_address_counter_minus_two = "100000000000") else
													"010000000000" when read_address_counter_minus_two(9) = '1' and read_address_counter_minus_two(8 downto 0) = "000000000" else
													"001000000000" when read_address_counter_minus_two(8) = '1' and read_address_counter_minus_two(7 downto 0) = "00000000" else
													"000100000000" when read_address_counter_minus_two(7) = '1' and read_address_counter_minus_two(6 downto 0) = "0000000" else
													"000010000000" when read_address_counter_minus_two(6) = '1' and read_address_counter_minus_two(5 downto 0) = "000000" else
													"000001000000" when read_address_counter_minus_two(5) = '1' and read_address_counter_minus_two(4 downto 0) = "00000" else
													"000000100000" when read_address_counter_minus_two(4) = '1' and read_address_counter_minus_two(3 downto 0) = "0000" else
													"000000010000" when read_address_counter_minus_two(3) = '1' and read_address_counter_minus_two(2 downto 0) = "000" else
													"000000001000" when read_address_counter_minus_two(2) = '1' and read_address_counter_minus_two(1 downto 0) = "00" else
													"000000000100" when read_address_counter_minus_two(1) = '1' and read_address_counter_minus_two(0 downto 0) = "0" else
													"000000000010" when read_address_counter_minus_two(0) = '1' else
													"000000000000";
							
	process(Tx_Clk)
	begin
		if rising_edge(Tx_Clk) then
			if (Tx_En_i = '1') then
				if read_address_counter(11 downto 1) /= write_address_counter then
					if read_add_simple = '1' then
						read_address_counter_minus_two <= read_address_counter_minus_two xor "000000000001";
					else
						read_address_counter_minus_two <= read_address_counter_minus_two xor read_address_counter_minus_two_temp;
					end if;
				end if;
			end if;
		end if;
	end process;
  
end behavioral;			