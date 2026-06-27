----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/24/2025 09:58:02 PM
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
           s : out STD_LOGIC_VECTOR (4 downto 0));
end fa4;

architecture Behavioral of fa4 is
component full_adder Port ( a,b,cin : in STD_LOGIC;
           sum,cout : out STD_LOGIC);
 end cOmponent;
 SIGNAL c:STD_LOGIC_VECTOR(2 DOWNTO 0);

begin
X0: full_adder PORT MAP(a(0),b(0),cin,s(0),c(0));
X1: full_adder PORT MAP(a(1),b(1),c(0),s(1),c(1));
X2: full_adder PORT MAP(a(2),b(2),c(1),s(2),c(2));
X3: full_adder PORT MAP(a(3),b(3),c(2),s(3));



end Behavioral;
