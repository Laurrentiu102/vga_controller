library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.std_logic_unsigned.all;
use ieee.math_real.all;

entity vga_controller is 
	Port ( CLK_100 : in STD_LOGIC;
	       BTNU: in STD_LOGIC;
	       BTND: in STD_LOGIC;
	       BTNL: in STD_LOGIC;
	       BTNR: in STD_LOGIC;
	       IMAGE: in STD_LOGIC_VECTOR(1 downto 0);
	       VGA_RED_I : in STD_LOGIC_VECTOR (3 downto 0);
 		   VGA_BLUE_I : in STD_LOGIC_VECTOR (3 downto 0);
 		   VGA_GREEN_I : in STD_LOGIC_VECTOR (3 downto 0);
		   VGA_HS_O : out STD_LOGIC;
 	 	   VGA_VS_O : out STD_LOGIC;
 		   VGA_RED_O : out STD_LOGIC_VECTOR (3 downto 0);
 		   VGA_BLUE_O : out STD_LOGIC_VECTOR (3 downto 0);
 		   VGA_GREEN_O : out STD_LOGIC_VECTOR (3 downto 0);
 		   LED1: out STD_LOGIC;
 		   LED2: out STD_LOGIC;
 		   LED3: out STD_LOGIC;
 		   LED4: out STD_LOGIC);
end vga_controller;


architecture Behavioral of vga_controller is

--***1280x1024@60Hz***--
constant HD : natural := 1280;
constant VD : natural := 1024;

constant HFP : natural := 48; --H front porch width (pixels)
constant HSP : natural := 112; --H sync pulse width (pixels)
constant HMAX : natural := 1688; --H total period (pixels)

constant VFP : natural := 1; --V front porch width (lines)
constant VSP : natural := 3; --V sync pulse width (lines)
constant VMAX : natural := 1066; --V total period (lines)

constant H_POL : std_logic := '1';
constant V_POL : std_logic := '1';

-- The active signal is used to signal the active region of the screen (when not blank)
signal active: std_logic;

-- Horizontal and Vertical counters
signal hPos : natural := 0;
signal vPos : natural := 0;

-- Horizontal and Vertical Sync
signal HS : std_logic := not(H_POL);
signal VS : std_logic := not(V_POL);

-- Pipe Horizontal and Vertical Sync
signal HSdly : std_logic := not(H_POL);
signal VSdly : std_logic :=not(V_POL);

-- VGA R, G and B signals coming from buttons
signal vga_red_cmb : std_logic_vector(3 downto 0):="1111";
signal vga_green_cmb : std_logic_vector(3 downto 0):="1111";
signal vga_blue_cmb: std_logic_vector(3 downto 0):="1111";

-- Register VGA R, G and B signals
signal vga_red : std_logic_vector(3 downto 0) := (others =>'0');
signal vga_green : std_logic_vector(3 downto 0) := (others =>'0');
signal vga_blue : std_logic_vector(3 downto 0) := (others =>'0');

--Images
constant patrat: std_logic_vector(1 downto 0):="00";

--Clock modifier
component clk_mul is
    port(clk_in1 : in std_logic;
         clk_out1 : out std_logic);
end component;

signal clk: std_logic:='0';

--Debouncer
component debouncer is
    port(CLK: in STD_LOGIC;
         BTN: in STD_LOGIC;
         BTN_NOU: out STD_LOGIC);
end component;

signal BTNUC: std_logic:='0';
signal BTNDC: std_logic:='0';
signal BTNLC: std_logic:='0';
signal BTNRC: std_logic:='0';

begin  
        clk_modifier : clk_mul port map(CLK_100,clk);
        ebu:debouncer port map(CLK,BTNU,BTNUC);
        debd:debouncer port map(CLK,BTND,BTNDC);
        debl:debouncer port map(CLK,BTNL,BTNLC);
        debr:debouncer port map(CLK,BTNR,BTNRC);
        
        LED1<=BTNLC;
        LED2<=BTNUC;
        LED3<=BTNRC;
        LED4<=BTNDC;
        
		horizontal_counter:process (clk)
         begin
           if (rising_edge(clk)) then
             if (hPos = (HMAX - 1)) then
               hPos <= 0;
             else
               hPos <= hPos + 1;
             end if;
           end if;
         end process;
    
		vertical_counter:process (clk)
         begin
           if (rising_edge(clk)) then
             if ((hPos = (HMAX - 1)) and (vPos = (VMAX - 1))) then
               vPos <= 0;
             elsif (hPos = (HMAX - 1)) then
               vPos <= vPos + 1;
             end if;
           end if;
         end process;
		 
		horizontal_sync:process (clk)
         begin
           if (rising_edge(clk)) then
             if (hPos >= (HFP + HD - 1)) and (hPos < (HFP + HD + HSP - 1)) then
               HS <= H_POL;
             else
               HS <= not(H_POL);
             end if;
           end if;
         end process;
         
		vertical_sync:process (clk)
         begin
           if (rising_edge(clk)) then
             if (vPos >= (VFP + VD - 1)) and (vPos < (VFP + VD + VSP - 1)) then
               VS <= V_POL;
             else
               VS <= not(V_POL);
             end if;
           end if;
        end process;
		 
		active <= '1' when hPos < HD and vPos < VD else '0';
		
		vga_red_cmb<=vga_red_i;
		vga_green_cmb<=vga_green_i;
		vga_blue_cmb<=vga_blue_i;
			 
		draw:process (clk)
     	 begin
       		if (rising_edge(clk)) then
         		VSdly <= VS;
         		HSdly <= HS;
				if active='1' then
				    case IMAGE is
				        when patrat =>
				            if hPos >=200 and hPos<=400 and vPos>=200 and vPos<=400 then
				                vga_red    <= vga_red_cmb;
         			            vga_green  <= vga_green_cmb;
         			            vga_blue   <= vga_blue_cmb;
         			        else
         			            vga_red    <= "0000";
         			            vga_green  <= "0000";
         			            vga_blue   <= "0000";
         			        end if;
         			     when others =>
         			        vga_red    <= "0000";
         			        vga_green  <= "0000";
         			        vga_blue   <= "0000";
				    end case;
				else
					vga_red    <= "0000";
         			vga_green  <= "0000";
         			vga_blue   <= "0000";
				end if;      
       		end if;
     	end process;
	 	
		VGA_HS_O     <= HSdly;
     	VGA_VS_O     <= VSdly;
     	VGA_RED_O    <= vga_red;
     	VGA_GREEN_O  <= vga_green;
     	VGA_BLUE_O   <= vga_blue;
end architecture;