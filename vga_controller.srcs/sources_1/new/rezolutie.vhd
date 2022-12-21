library IEEE;
use IEEE.std_logic_1164.all;
package rez is 
constant HD : natural := 1280;
constant VD : natural := 1024;

constant HFP : natural := 48;
constant HSP : natural := 112;
constant HMAX : natural := 1688;

constant VFP : natural := 1;
constant VSP : natural := 3; 
constant VMAX : natural := 1066; 

constant H_POL : std_logic := '1';
constant V_POL : std_logic := '1';
end package rez;
