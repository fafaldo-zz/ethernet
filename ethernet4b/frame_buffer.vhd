
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity frame_buffer is

  port (
    clkA   : in  std_logic;
    clkB   : in  std_logic;
    enA    : in  std_logic;
    enB    : in  std_logic;
    weA    : in  std_logic;
    weB    : in  std_logic;
    addrA  : in  std_logic_vector(11 downto 0);
    addrB  : in  std_logic_vector(10 downto 0);
    diA    : in  std_logic_vector(3 downto 0);
    diB    : in  std_logic_vector(7 downto 0);
    doA    : out std_logic_vector(3 downto 0);
    doB    : out std_logic_vector(7 downto 0)
  );

end frame_buffer;

architecture behavioral of frame_buffer is

  function log2 (val: INTEGER) return natural is
  
  variable res : natural;
  
  begin
        for i in 0 to 31 loop
            if (val <= (2**i)) then
                res := i;
                exit;
            end if;
        end loop;
        return res;
  end function log2;

  constant minWIDTH : integer := 4;
  constant maxWIDTH : integer := 8;
  constant maxSIZE  : integer := 4096;
  constant RATIO : integer := maxWIDTH / minWIDTH;

  -- An asymmetric RAM is modeled in a similar way as a symmetric RAM, with an
  -- array of array object. Its aspect ratio corresponds to the port with the
  -- lower data width (larger depth)
  type ramType is array (0 to maxSIZE-1) of std_logic_vector(minWIDTH-1 downto 0);

  -- You need to declare <ram> as a shared variable when :
  --   - the RAM has two write ports,
  --   - the RAM has only one write port whose data width is maxWIDTH
  -- In all other cases, <ram> can be a signal.
  --shared variable <ram> : ramType := (others => (others => '0'));
  signal ram : ramType := (others => (others => '0'));
  
  signal readA : std_logic_vector(3 downto 0):= (others => '0');
  signal readB : std_logic_vector(7 downto 0):= (others => '0');
  signal regA  : std_logic_vector(3 downto 0):= (others => '0');
  signal regB  : std_logic_vector(7 downto 0):= (others => '0');

begin

  process (clkA)
  begin
    if rising_edge(clkA) then
      if enA = '1' then
        if weA = '1' then
          ram(conv_integer(addrA)) <= diA;
          readA <= diA;
        else
			 readA <= ram(conv_integer(addrA));
        end if;
      end if;
      regA <= readA;
    end if;
  end process;

  process (clkB)
  begin
    if rising_edge(clkB) then
      if enB = '1' then        
        for i in 0 to RATIO-1 loop
--          if <weB> = '1' then
--            <ram>(conv_integer(<addrB> & conv_std_logic_vector(i,log2(RATIO))))
--	          := <diB>((i+1)*minWIDTH-1 downto i*minWIDTH);
--          end if;
		  -- The read statement below is placed after the write statement on purpose
		  -- to ensure write-first synchronization through the variable mechanism
          readB((i+1)*4-1 downto i*4) <= ram(conv_integer(addrB & conv_std_logic_vector(i,log2(RATIO))));
        end loop;
      end if;
      regB <= readB;
    end if;
  end process;

  doA <= regA;
  doB <= regB;
  
end behavioral;

							