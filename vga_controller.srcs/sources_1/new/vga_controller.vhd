library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.std_logic_unsigned.all;
use ieee.math_real.all;

entity vga_controller is 
	Port ( CLK : in STD_LOGIC;
	       VGA_RED_I : in STD_LOGIC_VECTOR (3 downto 0);
 		   VGA_BLUE_I : in STD_LOGIC_VECTOR (3 downto 0);
 		   VGA_GREEN_I : in STD_LOGIC_VECTOR (3 downto 0);
		   VGA_HS_O : out STD_LOGIC;
 	 	   VGA_VS_O : out STD_LOGIC;
 		   VGA_RED_O : out STD_LOGIC_VECTOR (3 downto 0);
 		   VGA_BLUE_O : out STD_LOGIC_VECTOR (3 downto 0);
 		   VGA_GREEN_O : out STD_LOGIC_VECTOR (3 downto 0));
end vga_controller;


architecture Behavioral of vga_controller is

--***1280x1024@60Hz***--
constant FRAME_WIDTH : natural := 1280;
constant FRAME_HEIGHT : natural := 1024;

constant H_FP : natural := 48; --H front porch width (pixels)
constant H_PW : natural := 112; --H sync pulse width (pixels)
constant H_MAX : natural := 1688; --H total period (pixels)

constant V_FP : natural := 1; --V front porch width (lines)
constant V_PW : natural := 3; --V sync pulse width (lines)
constant V_MAX : natural := 1066; --V total period (lines)

constant H_POL : std_logic := '1';
constant V_POL : std_logic := '1';

-- The active signal is used to signal the active region of the screen (when not blank)
signal active: std_logic;

-- Horizontal and Vertical counters
signal h_cntr_reg : std_logic_vector(11 downto 0) := (others =>'0');
signal v_cntr_reg : std_logic_vector(11 downto 0) := (others =>'0');

-- Pipe Horizontal and Vertical Counters
signal h_cntr_reg_dly : std_logic_vector(11 downto 0) := (others => '0');
signal v_cntr_reg_dly : std_logic_vector(11 downto 0) := (others => '0');

-- Horizontal and Vertical Sync
signal h_sync_reg : std_logic := not(H_POL);
signal v_sync_reg : std_logic := not(V_POL);
-- Pipe Horizontal and Vertical Sync
signal h_sync_reg_dly : std_logic := not(H_POL);
signal v_sync_reg_dly : std_logic :=not(V_POL);

-- VGA R, G and B signals coming from the main multiplexers
signal vga_red_cmb : std_logic_vector(3 downto 0):="1111";
signal vga_green_cmb : std_logic_vector(3 downto 0):="1111";
signal vga_blue_cmb: std_logic_vector(3 downto 0):="1111";
--The main VGA R, G and B signals, validated by active
signal VGA_RED: std_logic_vector(3 downto 0);
signal VGA_GREEN: std_logic_vector(3 downto 0);
signal VGA_BLUE: std_logic_vector(3 downto 0);
-- Register VGA R, G and B signals
signal vga_red_reg : std_logic_vector(3 downto 0) := (others =>'0');
signal vga_green_reg : std_logic_vector(3 downto 0) := (others =>'0');
signal vga_blue_reg: std_logic_vector(3 downto 0) := (others =>'0');

begin  
	
		horizontal_counter:process (clk)
         begin
           if (rising_edge(clk)) then
             if (h_cntr_reg = (H_MAX - 1)) then
               h_cntr_reg <= (others =>'0');
             else
               h_cntr_reg <= h_cntr_reg + 1;
             end if;
           end if;
         end process;
    
		vertical_counter:process (clk)
         begin
           if (rising_edge(clk)) then
             if ((h_cntr_reg = (H_MAX - 1)) and (v_cntr_reg = (V_MAX - 1))) then
               v_cntr_reg <= (others =>'0');
             elsif (h_cntr_reg = (H_MAX - 1)) then
               v_cntr_reg <= v_cntr_reg + 1;
             end if;
           end if;
         end process;
		 
		horizontal_sync:process (clk)
         begin
           if (rising_edge(clk)) then
             if (h_cntr_reg >= (H_FP + FRAME_WIDTH - 1)) and (h_cntr_reg < (H_FP + FRAME_WIDTH + H_PW - 1)) then
               h_sync_reg <= H_POL;
             else
               h_sync_reg <= not(H_POL);
             end if;
           end if;
         end process;
         
		vertical_sync:process (clk)
         begin
           if (rising_edge(clk)) then
             if (v_cntr_reg >= (V_FP + FRAME_HEIGHT - 1)) and (v_cntr_reg < (V_FP + FRAME_HEIGHT + V_PW - 1)) then
               v_sync_reg <= V_POL;
             else
               v_sync_reg <= not(V_POL);
             end if;
           end if;
        end process;
		 
		active <= '1' when h_cntr_reg < FRAME_WIDTH and v_cntr_reg < FRAME_HEIGHT else '0';
		
		vga_red_cmb<=vga_red_i;
		vga_green_cmb<=vga_green_i;
		vga_blue_cmb<=vga_blue_i;
			 
		draw:process (clk)
     	 begin
       		if (rising_edge(clk)) then
         		v_sync_reg_dly <= v_sync_reg;
         		h_sync_reg_dly <= h_sync_reg;
				if active='1' then
					vga_red_reg    <= vga_red_cmb;
         			vga_green_reg  <= vga_green_cmb;
         			vga_blue_reg   <= vga_blue_cmb;
				else
					vga_red_reg    <= "0000";
         			vga_green_reg  <= "0000";
         			vga_blue_reg   <= "0000";
				end if;      
       		end if;
     	end process;
	 	
		VGA_HS_O     <= h_sync_reg_dly;
     	VGA_VS_O     <= v_sync_reg_dly;
     	VGA_RED_O    <= vga_red_reg;
     	VGA_GREEN_O  <= vga_green_reg;
     	VGA_BLUE_O   <= vga_blue_reg;
end architecture;
