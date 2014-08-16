
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity fifo_control_unit is

  port (
    clkA   : out  std_logic;
    clkB   : out  std_logic;
    enA    : out  std_logic;
    enB    : out  std_logic;
    weA    : out  std_logic := '1';
    --weB    : out  std_logic;
    addrA  : out  std_logic_vector(11 downto 0);
    addrB  : out  std_logic_vector(10 downto 0);
    diA    : out  std_logic_vector(3 downto 0);
    --diB    : out  std_logic_vector(7 downto 0);
    --doA    : out std_logic_vector(3 downto 0);
    doB    : in std_logic_vector(7 downto 0);
	 
	 EOFenA : out std_logic;
	 EOFweA : out std_logic;
	 addrEOFA : out std_logic_vector(13 downto 0);
	 addrEOFB : out std_logic_vector(12 downto 0);
	 diEOFA : out std_logic_vector(0 downto 0);
	 doEOFB : in std_logic_vector(1 downto 0);
	 
	 empty  : out std_logic;
	 full   : out std_logic;
	 data_out : out std_logic_vector(7 downto 0);
	 EOF    : out std_logic;
	 clk    : in std_logic;
	 Rx_Clk : in std_logic;
	 Rx_DV  : in std_logic;
	 Rx_D   : in std_logic_vector(3 downto 0);
	 POP    : in std_logic;
	 test   : out std_logic_vector(7 downto 0)
  );

end fifo_control_unit;

architecture behavioral of fifo_control_unit is

	signal write_address_counter : std_logic_vector(11 downto 0) := (others=>'0');
	signal read_address_counter : std_logic_vector(10 downto 0) := (others=>'0');
  
	signal empty_i : std_logic;
	signal full_i : std_logic;
--	signal wea_i : std_logic;
	
--	signal first_received : std_logic := '0';
--	signal second_received : std_logic := '0';

	signal doB_latched : std_logic_vector(7 downto 0) := (others=>'0');
	signal EOF_latched : std_logic_vector(1 downto 0) := (others=>'0');
	
	signal frame_started : std_logic := '0';
	
	signal write_add_simple : std_logic := '1';
	signal write_add_temp : std_logic_vector(11 downto 0) := (others=>'0');
	signal read_add_simple : std_logic := '1';
	signal read_add_temp : std_logic_vector(10 downto 0) := (others=>'0');
	
	signal write_address_counter_minus_one : std_logic_vector(11 downto 0) := "100000000000";
	signal write_address_counter_minus_one_temp : std_logic_vector(11 downto 0) := (others=>'0');
	
	signal read_address_counter_minus_one : std_logic_vector(10 downto 0) := "10000000000";
	signal read_address_counter_minus_one_temp : std_logic_vector(10 downto 0) := (others=>'0');

begin

--	test <= second & first;


	--
	-- PRZYPISANIA WYJŒÆ DO FRAME BUFFER'A
	--
	addrA <= write_address_counter;
	addrB <= read_address_counter;
	
	clkA <= Rx_Clk;
	clkB <= clk;
	enB <= '1';
	enA <= Rx_DV;
	diA <= Rx_D;
	data_out <= doB_latched;
	EOF <= EOF_latched(0) or EOF_latched(1);
	
	
	--
	-- PRZYPISANIA WYJŒÆ DO EOF BUFFER'A
	--
	addrEOFA <= "00" & write_address_counter_minus_one;
	addrEOFB <= "00" & read_address_counter;
	
	EOFenA <= '1';
	EOFweA <= '1' when (Rx_DV = '0' and frame_started = '1') else '0';
	
	diEOFA <= "1";
	
	
	--
	-- FLAGA FRAME STARTED
	--
	-- ustawiana na 1 jak jest ramka, na 0 gdy nie ma
	-- s³u¿y jako trigger do zapisania koñca ramki po opadniêciu Rx_DV
	--
	process(Rx_Clk)
	begin
		if rising_edge(Rx_Clk) then
			if Rx_DV = '1' and frame_started = '0' then
				frame_started <= '1';
			elsif Rx_DV = '0'and frame_started = '1' then
				frame_started <= '0';
			end if;
		end if;
	end process;
	
	
	--
	-- USTAWIANIE WRITE ENABLE A
	--
	-- tutaj nastêpuje w³aœciwe zabezpieczenie przed nadpisaniem starych danych w kolejce
	--
	process (Rx_Clk)
	begin
		if rising_edge(Rx_Clk) then
			if (write_address_counter(11 downto 1) = 0 and read_address_counter = 0) or write_address_counter(11 downto 1) /= read_address_counter_minus_one then
				weA <= '1';
--				wea_i <= '1';
			else
				weA <= '0';
--				wea_i <= '0';
			end if;
		end if;
	end process;
	
	
	--
	-- LATCHOWANIE WYJŒÆ NA POP'IE
	--
	-- POP zwiêksza read counter + 1, a aktualnie wymagana wartoœæ by³a wyœwietlana do tej pory, w zwi¹zku z tym 
	-- musimy j¹ zapisaæ, zanim zmieni siê na nastêpn¹
	-- 
	process (clk)
	begin
		if rising_edge(clk) then
			if (POP = '1') then
				if (read_add_simple = '1') then
					doB_latched <= doB;
				else
					doB_latched <= doB(3 downto 0) & doB(7 downto 4);
				end if;
			end if;
		end if;
	end process;
	
	process (clk)
	begin
		if rising_edge(clk) then
			if (POP = '1') then
				EOF_latched <= doEOFB;
			end if;
		end if;
	end process;
	
	
	-- 
	-- USTAWIANIE FLAG EMPTY I FULL
	--
	process (Rx_Clk)
	begin
		if rising_edge(Rx_Clk) then
			if write_address_counter(11 downto 1) = read_address_counter_minus_one then
				full <= '1';
				full_i <= '1';
			else
				full <= '0';
				full_i <= '0';
			end if;
		end if;
	end process;
	
	process (clk)
	begin
		if rising_edge(clk) then
			if read_address_counter = write_address_counter(11 downto 1) then
				empty <= '1';
				empty_i <= '1';
			else
				empty <= '0';
				empty_i <= '0';
			end if;
		end if;
	end process;
	
	
	--
	-- ZWIÊKSZANIE WRITE ADDRESS COUNTER'A W ZALE¯NOŒCI OD POPRZEDNIEJ WARTOŒCI
	--
	-- Licznik liczy w kodzie grey'a
	-- simple zmieniana jest naprzemiennie i s³u¿y do rozró¿nienia jak policzyæ nastêpn¹ wartoœæ
	-- temp s³u¿y do xorowania z nim wartoœci
	-- zmiana nastêpuje przez odpowiednie dzia³anie
	--
	process (Rx_Clk)
	begin
		if rising_edge(Rx_Clk) then
			if Rx_DV = '1' then
				if (write_address_counter(11 downto 1) = 0 and read_address_counter = 0) or write_address_counter(11 downto 1) /= read_address_counter_minus_one then
					write_add_simple <= not write_add_simple;
				end if;
			end if;
		end if;
	end process;
	
	write_add_temp <= "100000000000" when (write_address_counter(10) = '1' and write_address_counter(9 downto 0) = "0000000000") or (write_address_counter = "100000000000") else
							"010000000000" when write_address_counter(9) = '1' and write_address_counter(8 downto 0) = "000000000" else
							"001000000000" when write_address_counter(8) = '1' and write_address_counter(7 downto 0) = "00000000" else
							"000100000000" when write_address_counter(7) = '1' and write_address_counter(6 downto 0) = "0000000" else
							"000010000000" when write_address_counter(6) = '1' and write_address_counter(5 downto 0) = "000000" else
							"000001000000" when write_address_counter(5) = '1' and write_address_counter(4 downto 0) = "00000" else
							"000000100000" when write_address_counter(4) = '1' and write_address_counter(3 downto 0) = "0000" else
							"000000010000" when write_address_counter(3) = '1' and write_address_counter(2 downto 0) = "000" else
							"000000001000" when write_address_counter(2) = '1' and write_address_counter(1 downto 0) = "00" else
							"000000000100" when write_address_counter(1) = '1' and write_address_counter(0 downto 0) = "0" else
							"000000000010" when write_address_counter(0) = '1' else
							"000000000000";
							
	process(Rx_Clk)
	begin
		if rising_edge(Rx_Clk) then
			if Rx_DV = '1' then
				if (write_address_counter(11 downto 1) = 0 and read_address_counter = 0) or write_address_counter(11 downto 1) /= read_address_counter_minus_one then
					if write_add_simple = '1' then
						write_address_counter <= write_address_counter xor "000000000001";
					else
						write_address_counter <= write_address_counter xor write_add_temp;
					end if;
				end if;
			end if;
		end if;
	end process;
	
	
	--
	-- ZWIÊKSZANIE READ ADDRESS COUNTER'A W ZALE¯NOŒCI OD POPRZEDNIEJ WARTOŒCI
	--
	process (clk)
	begin
		if rising_edge(clk) then
			if (POP = '1') then
				if read_address_counter /= write_address_counter(11 downto 1) then
					read_add_simple <= not read_add_simple;
				end if;
			end if;
		end if;
	end process;
	
	read_add_temp <=  "10000000000" when (read_address_counter(9) = '1' and read_address_counter(8 downto 0) = "000000000") or (read_address_counter = "10000000000") else
							"01000000000" when read_address_counter(8) = '1' and read_address_counter(7 downto 0) = "00000000" else
							"00100000000" when read_address_counter(7) = '1' and read_address_counter(6 downto 0) = "0000000" else
							"00010000000" when read_address_counter(6) = '1' and read_address_counter(5 downto 0) = "000000" else
							"00001000000" when read_address_counter(5) = '1' and read_address_counter(4 downto 0) = "00000" else
							"00000100000" when read_address_counter(4) = '1' and read_address_counter(3 downto 0) = "0000" else
							"00000010000" when read_address_counter(3) = '1' and read_address_counter(2 downto 0) = "000" else
							"00000001000" when read_address_counter(2) = '1' and read_address_counter(1 downto 0) = "00" else
							"00000000100" when read_address_counter(1) = '1' and read_address_counter(0 downto 0) = "0" else
							"00000000010" when read_address_counter(0) = '1' else
							"00000000000";
							
	process(clk)
	begin
		if rising_edge(clk) then
			if (POP = '1') then
				if read_address_counter /= write_address_counter(11 downto 1) then
					if read_add_simple = '1' then
						read_address_counter <= read_address_counter xor "00000000001";
					else
						read_address_counter <= read_address_counter xor read_add_temp;
					end if;
				end if;
			end if;
		end if;
	end process;
	
	
	--
	-- ZWIÊKSZANIE WRITE ADDRESS COUNTER'A MINUS ONE
	--
	-- minus one s³u¿y za adres do zapisania koñca ramki
	--
	write_address_counter_minus_one_temp <= "100000000000" when (write_address_counter_minus_one(10) = '1' and write_address_counter_minus_one(9 downto 0) = "0000000000") or (write_address_counter_minus_one = "100000000000") else
							"010000000000" when write_address_counter_minus_one(9) = '1' and write_address_counter_minus_one(8 downto 0) = "000000000" else
							"001000000000" when write_address_counter_minus_one(8) = '1' and write_address_counter_minus_one(7 downto 0) = "00000000" else
							"000100000000" when write_address_counter_minus_one(7) = '1' and write_address_counter_minus_one(6 downto 0) = "0000000" else
							"000010000000" when write_address_counter_minus_one(6) = '1' and write_address_counter_minus_one(5 downto 0) = "000000" else
							"000001000000" when write_address_counter_minus_one(5) = '1' and write_address_counter_minus_one(4 downto 0) = "00000" else
							"000000100000" when write_address_counter_minus_one(4) = '1' and write_address_counter_minus_one(3 downto 0) = "0000" else
							"000000010000" when write_address_counter_minus_one(3) = '1' and write_address_counter_minus_one(2 downto 0) = "000" else
							"000000001000" when write_address_counter_minus_one(2) = '1' and write_address_counter_minus_one(1 downto 0) = "00" else
							"000000000100" when write_address_counter_minus_one(1) = '1' and write_address_counter_minus_one(0 downto 0) = "0" else
							"000000000010" when write_address_counter_minus_one(0) = '1' else
							"000000000000";
							
	process(Rx_Clk)
	begin
		if rising_edge(Rx_Clk) then
			if Rx_DV = '1' then
				if (write_address_counter(11 downto 1) = 0 and read_address_counter = 0) or write_address_counter(11 downto 1) /= read_address_counter_minus_one then
					if write_add_simple = '0' then
						write_address_counter_minus_one <= write_address_counter_minus_one xor "000000000001";
					else
						write_address_counter_minus_one <= write_address_counter_minus_one xor write_address_counter_minus_one_temp;
					end if;
				end if;
			end if;
		end if;
	end process;
	
	
	--
	-- ZWIÊKSZANIE READ ADDRESS COUNTER'A MINUS ONE
	--
	-- minus one s³u¿y do porównywania przy sterowaniu zapisywaniem i odczytywaniem
	--
	read_address_counter_minus_one_temp <=  "10000000000" when (read_address_counter_minus_one(9) = '1' and read_address_counter_minus_one(8 downto 0) = "000000000") or (read_address_counter_minus_one = "10000000000") else
							"01000000000" when read_address_counter_minus_one(8) = '1' and read_address_counter_minus_one(7 downto 0) = "00000000" else
							"00100000000" when read_address_counter_minus_one(7) = '1' and read_address_counter_minus_one(6 downto 0) = "0000000" else
							"00010000000" when read_address_counter_minus_one(6) = '1' and read_address_counter_minus_one(5 downto 0) = "000000" else
							"00001000000" when read_address_counter_minus_one(5) = '1' and read_address_counter_minus_one(4 downto 0) = "00000" else
							"00000100000" when read_address_counter_minus_one(4) = '1' and read_address_counter_minus_one(3 downto 0) = "0000" else
							"00000010000" when read_address_counter_minus_one(3) = '1' and read_address_counter_minus_one(2 downto 0) = "000" else
							"00000001000" when read_address_counter_minus_one(2) = '1' and read_address_counter_minus_one(1 downto 0) = "00" else
							"00000000100" when read_address_counter_minus_one(1) = '1' and read_address_counter_minus_one(0 downto 0) = "0" else
							"00000000010" when read_address_counter_minus_one(0) = '1' else
							"00000000000";
							
	process(clk)
	begin
		if rising_edge(clk) then
			if (POP = '1') then
				if read_address_counter /= write_address_counter(11 downto 1) then
					if read_add_simple = '0' then
						read_address_counter_minus_one <= read_address_counter_minus_one xor "00000000001";
					else
						read_address_counter_minus_one <= read_address_counter_minus_one xor read_address_counter_minus_one_temp;
					end if;
				end if;
			end if;
		end if;
	end process;
  
end behavioral;			