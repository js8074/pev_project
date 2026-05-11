library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.PKG_VGA_DRAW.ALL;

 
entity VGA_DRAW is
  generic (
		G_COL_CHNL_BIT_WIDTH : in integer := COL_CHNL_BIT_WIDTH;
		G_IMG_SCALE : in integer range 1 to 4 := IMG_SCALE
	);
  port (
		CLK     : in  std_logic;
		X_IN    : in  std_logic_vector(10 downto 0);
    Y_IN    : in  std_logic_vector(10 downto 0);

    BTN_PRESS_VALID_IN : in std_logic;
    BTN_RELEASE_VALID_IN : in std_logic;
    BUTTONS_IN : in std_logic_vector(15 downto 0);

    R_OUT   : out std_logic_vector(G_COL_CHNL_BIT_WIDTH-1 downto 0);
    G_OUT   : out std_logic_vector(G_COL_CHNL_BIT_WIDTH-1 downto 0);
    B_OUT   : out std_logic_vector(G_COL_CHNL_BIT_WIDTH-1 downto 0)
    );
end VGA_DRAW;
 
architecture RTL of VGA_DRAW is

  signal RSIG : std_logic_vector(R_OUT'range);
  signal GSIG : std_logic_vector(G_OUT'range);
  signal BSIG : std_logic_vector(B_OUT'range);

  signal SCALED_X : unsigned(X_IN'left-1 downto 0);
  signal SCALED_Y : unsigned(Y_IN'left-1 downto 0);

  signal SEGMENTS : unsigned(2 downto 0) := (others => '0');

  signal CUR_R_STATE : T_CHNL_BEHAVE;
  signal CUR_G_STATE : T_CHNL_BEHAVE;
  signal CUR_B_STATE : T_CHNL_BEHAVE;

  -- signal RGB : std_logic_vector(3*G_COL_CHNL_BIT_WIDTH - 1 downto 0) := (others => '0');
  signal BTN_CNTR : std_logic_vector(9 downto 0);
  
begin


  -- Create segments for color rectangle
  SEGMENTS <= unsigned(X_IN(G_COL_CHNL_BIT_WIDTH + (G_IMG_SCALE - 1) + SEGMENTS'left downto G_COL_CHNL_BIT_WIDTH + (G_IMG_SCALE - 1))) mod 6;

  -- Set states for each color using seqment value
  CUR_R_STATE <= R_BEHAVE(to_integer(SEGMENTS));
  CUR_G_STATE <= G_BEHAVE(to_integer(SEGMENTS));
  CUR_B_STATE <= B_BEHAVE(to_integer(SEGMENTS));


  test_kbd : process(CLK) is 
    variable index : integer := 0;
    variable RGB : std_logic;
    variable RGB2 : std_logic;
    variable RGB3 : std_logic;
    variable RGB4 : std_logic;
    variable str_v : string (1 to BUTTONS_IN'length) := (others => ' ');
    variable strnum_v : string (1 to 6) := (others => ' ');
    variable BTN_CNTR_V : integer range 0 to 999;
  begin
    if rising_edge(CLK) then 

      if (BTN_PRESS_VALID_IN = '1') then
        BTN_CNTR <= std_logic_vector(unsigned(BTN_CNTR) + 1);
        strnum_v := (others => ' ');
        BTN_CNTR_V := to_integer(unsigned(BTN_CNTR));
        
        strnum_v(5) :=  character'val(character'pos('0') + (BTN_CNTR_V mod 10)); 
        BTN_CNTR_V := BTN_CNTR_V / 10;

        strnum_v(4) :=  character'val(character'pos('0') + (BTN_CNTR_V mod 10)); 
        BTN_CNTR_V := BTN_CNTR_V / 10;

        strnum_v(3) :=  character'val(character'pos('0') + (BTN_CNTR_V mod 10)); 
        BTN_CNTR_V := BTN_CNTR_V / 10;

        strnum_v(2) :=  character'val(character'pos('0') + (BTN_CNTR_V mod 10)); 
        BTN_CNTR_V := BTN_CNTR_V / 10;


      end if;

        for i in 1 to BUTTONS_IN'length loop 
          if BUTTONS_IN(i-1) = '1' then 
            str_v(i) := '1';
          else 
            str_v(i) := '0';
          end if;
        end loop;
              
      fprint(SPACE_FILL(100/6) & "The buttons pressed mask (1,2,3,A,4,5,6,B,7,8,9,C,0,F,E,D) is:", 10, X_IN, Y_IN, RGB);
      fprint(SPACE_FILL(100/2 - 8) & str_v & ".", 12, X_IN, Y_IN, RGB2);
      fprint(SPACE_FILL((100-30) / 2) & "Number of button presses: ", 15, X_IN, Y_IN, RGB3);
      fprint(SPACE_FILL(30) & SPACE_FILL((100-30) / 2) & strnum_v(1 to 5) & ".", 15, X_IN, Y_IN, RGB4);
      
      R_OUT <= (others => (RGB or RGB2 or RGB4 or RGB3));
      G_OUT <= (others => (RGB or RGB2 or RGB3));
      B_OUT <= (others => (RGB2 or RGB3));
    
    end if;
  end process;

          
        

end RTL;