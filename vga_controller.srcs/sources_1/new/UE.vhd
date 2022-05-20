library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library work;
use work.rez.all;

entity UE is
    port(clk_100,BTNM,BTNL,BTNR,BTND,BTNU:in std_logic;
    vval,hval: out natural;
    BTNMC,BTNLC,BTNRC,BTNDC,BTNUC: out std_logic;
    clkb,clk: out std_logic);
end UE;

architecture structurala of UE is

component horizontal_counter is
    port(clk:in std_logic;
    hPos: out natural);
end component;

component vertical_counter is
    port(clk:in std_logic;
    hPos:in natural;
    vPos: out natural);
end component;

component clk_mul is
    port(clk_in1 : in std_logic;
         clk_out1 : out std_logic);
end component;

component debouncer is
    port(CLK: in STD_LOGIC;
         BTN: in STD_LOGIC;
         BTN_NOU: out STD_LOGIC);
end component;
component clk_divider is   
	port(clk100:in std_logic;
	clk1:out std_logic);
end component;

signal clkc:std_logic;
signal clkbutton: std_logic;
signal hPos,vPos:natural;

begin

        clk_butons:clk_divider port map(CLK_100,clkbutton);
        clk_modifier : clk_mul port map(CLK_100,clkc);
        debu:debouncer port map(clkc,BTNU,BTNUC);
        debd:debouncer port map(clkc,BTND,BTNDC);
        debl:debouncer port map(clkc,BTNL,BTNLC);
        debr:debouncer port map(clkc,BTNR,BTNRC);
        debm:debouncer port map(clkc,BTNM,BTNMC);
        horizontal:horizontal_counter port map(clkc,hPos);
        vertical:vertical_counter port map(clkc,hPos,vPos);
        
        vval<=vPos;
        hval<=hPos;
        clkb<=clkbutton;
        clk<=clkc;
        

end structurala;
