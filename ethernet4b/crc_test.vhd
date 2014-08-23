--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:37:56 08/22/2014
-- Design Name:   
-- Module Name:   C:/Users/fafik/Dropbox/infa/git/ethernet/ethernet4b/crc_test.vhd
-- Project Name:  ethernet
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CRC32
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY crc_test IS
END crc_test;
 
ARCHITECTURE behavior OF crc_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CRC32
    PORT(
         data_in : IN  std_logic_vector(7 downto 0);
         enable : IN  std_logic;
         reset : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal enable : std_logic := '0';
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal data_in : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CRC32 PORT MAP (
          data_in => data_in,
          enable => enable,
          reset => reset,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;

   enable <= '1';
	data_in <= x"20", 
x"CF" after 10 ns, 
x"30" after 20 ns, 
x"39" after 30 ns, 
x"FF" after 40 ns, 
x"7E" after 50 ns, 
x"11" after 60 ns, 
x"11" after 70 ns, 
x"11" after 80 ns, 
x"11" after 90 ns, 
x"11" after 100 ns, 
x"11" after 110 ns, 
x"08" after 120 ns, 
x"00" after 130 ns, 
x"45" after 140 ns, 
x"00" after 150 ns, 
x"00" after 160 ns, 
x"2E" after 170 ns, 
x"00" after 180 ns, 
x"00" after 190 ns, 
x"40" after 200 ns, 
x"00" after 210 ns, 
x"40" after 220 ns, 
x"00" after 230 ns, 
x"BF" after 240 ns, 
x"54" after 250 ns, 
x"DE" after 260 ns, 
x"DE" after 270 ns, 
x"DE" after 280 ns, 
x"DF" after 290 ns, 
x"DE" after 300 ns, 
x"DE" after 310 ns, 
x"DE" after 320 ns, 
x"DE" after 330 ns, 
x"00" after 340 ns, 
x"00" after 350 ns, 
x"00" after 360 ns, 
x"00" after 370 ns, 
x"00" after 380 ns, 
x"00" after 390 ns, 
x"00" after 400 ns, 
x"00" after 410 ns, 
x"00" after 420 ns, 
x"00" after 430 ns, 
x"00" after 440 ns, 
x"00" after 450 ns, 
x"00" after 460 ns, 
x"00" after 470 ns, 
x"00" after 480 ns, 
x"00" after 490 ns, 
x"00" after 500 ns, 
x"00" after 510 ns, 
x"00" after 520 ns, 
x"00" after 530 ns, 
x"00" after 540 ns, 
x"00" after 550 ns, 
x"00" after 560 ns, 
x"00" after 570 ns, 
x"00" after 580 ns, 
x"00" after 590 ns,

x"00" after 600 ns, 
x"00" after 610 ns, 
x"00" after 620 ns, 
x"00" after 630 ns;

END;
