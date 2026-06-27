----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/24/2025 06:14:38 PM
-- Design Name: 
-- Module Name: fa4 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fa4 is
    Port ( a,b : in STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC;
           s,cout : out STD_LOGIC_VECTOR (3 downto 0));
end fa4;

architecture Behavioral of fa4 is
component full_adder port( a,b : in STD_LOGIC_vector(3 downto 0);cin:in std_logic;
           sum : out STD_LOGIC_vector(3 downto 0); cout:out std_logic);
 end component;
 signal c: std_logic_vector (2 downto 0);

begin
 x0: full_adder port map (a(0), b(0), cin, s(0), c(0));
 x1: full_adder ]port map (a(1), b(1), c(0), s(1), c(1));
 x2: full_adder port map (a(2), b(2), c(0)  ,c(2)
 x0: full_adder port map (a(0), b(0), cin, s(0), c(0));

end Behavioral;
