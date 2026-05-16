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

    STATE_IN    : in  std_logic_vector(1 downto 0);
    DIR_X    : in  std_logic;
    DIR_Y    : in  std_logic;
    
    LEFT_SCORE_IN   : in std_logic_vector(3 downto 0);
    RIGHT_SCORE_IN   : in std_logic_vector(3 downto 0);
    
    BALL_X_IN   : in std_logic_vector(10 downto 0);
    BALL_Y_IN   : in std_logic_vector(10 downto 0);
    BLOCK_LEFT_IN   : in std_logic_vector(10 downto 0);
    BLOCK_RIGHT_IN   : in std_logic_vector(10 downto 0);
    
    R_IN   : in std_logic_vector(G_COL_CHNL_BIT_WIDTH-1 downto 0);
    G_IN   : in std_logic_vector(G_COL_CHNL_BIT_WIDTH-1 downto 0);
    B_IN   : in std_logic_vector(G_COL_CHNL_BIT_WIDTH-1 downto 0);

    BTN_PRESS_VALID_IN    : in std_logic;
    BTN_RELEASE_VALID_IN  : in std_logic;
    BUTTONS_IN            : in std_logic_vector(15 downto 0);

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

  signal S_BLOCK_LEFT_IN : std_logic_vector(BLOCK_LEFT_IN'range);
  signal S_BLOCK_RIGHT_IN : std_logic_vector(BLOCK_RIGHT_IN'range);

  signal CUR_R_STATE : T_CHNL_BEHAVE;
  signal CUR_G_STATE : T_CHNL_BEHAVE;
  signal CUR_B_STATE : T_CHNL_BEHAVE;

  signal S_RGB : std_logic_vector(3*G_COL_CHNL_BIT_WIDTH - 1 downto 0) := (others => '0');
  signal BTN_CNTR : std_logic_vector(9 downto 0);
  
  signal S_DIRX : std_logic;
  signal S_STATE : std_logic_vector(STATE_IN'range);
begin

  SPARKS : process(CLK) is 
  constant DURATION : integer := 30;
  constant NUM_SPARKS : integer := 10;
  variable counter_start : std_logic := '0'; 
  variable timestamp : std_logic := '0'; 
  variable counter : integer range 0 to DURATION := DURATION;
  variable cx : integer;
  variable cy : integer;


  type A_dy is array(0 to NUM_SPARKS-1) of integer range 0 to 600;
  -- Spark y position
  variable dy : A_dy := (others => 300);
  -- Spark x position
    variable dx : A_dy := (others => 400);
    -- variable dx : integer range 0 to 800 := 400;
  
  type A_vx is array(0 to NUM_SPARKS-1) of integer range -64 to 63;
  -- Spark x initial velocity
  variable vx : A_vx := (2, 9, 0, 6, 4, 10, 3, 7, 1, 8);
  -- Spark x velocity at each index of time
  -- variable vxt : A_vx := (others => 0);

  -- Spark y velocity because of gravity
  variable vg : integer range -128 to 127 := 0;

  type A_vy is array(0 to NUM_SPARKS-1) of integer range -128 to 127;
  
  -- Spark initial y velocity 
  variable vy : A_vy := (3, -5, 6, -12, -2, 7, -8, 5, -18, 12);
  
  -- Spark y velocity at each index of time. Vgravity + Vinitial 
  variable vt : A_vy := (others => 0);

  -- Gravitational acceleration 
  constant grav : integer := 1;
  
  -- If statement in a loop result 
  variable loop_res : std_logic;

  variable counter_us : unsigned(4 downto 0);

  begin 
    if rising_edge(CLK) then 
    S_STATE <= STATE_IN;
    S_DIRX <= DIR_X;
    cx := to_integer(unsigned(X_IN));
    cy := to_integer(unsigned(Y_IN));

      if (S_DIRX /= DIR_X) and (STATE_IN = "01") and (S_STATE = "01") then 
        counter_start := '1';
      else
        counter_start := '0';
      end if;

      if counter_start = '1' then 
        timestamp := '1';
        counter_start := '0';
      end if;

      if (unsigned(X_IN) = 3) and (unsigned(Y_IN) = 3) and (timestamp = '1') then 
        if counter = 0 then 
          counter := DURATION;
          timestamp := '0';
        else 
          counter := counter - 1;
        end if;

        vg := (DURATION - counter) * grav;

        for i in 0 to NUM_SPARKS-1 loop
          vt(i) := vg + vy(i);
          dy(i) := dy(i) + (vt(i))/2;
          if unsigned(BALL_X_IN) < 400 then 
            dx(i) := dx(i) + vx(i);
          else 
            dx(i) := dx(i) - vx(i);
          end if;


        end loop;



      elsif (timestamp = '0') then 
        counter := DURATION;

        for i in 0 to NUM_SPARKS-1 loop
        -- Set hit position
          dy(i) := to_integer(unsigned(BALL_Y_IN)); --300;
          dx(i) := to_integer(unsigned(BALL_X_IN)); --400;
        end loop;
      end if;

      loop_res := '0';
      for i in 0 to NUM_SPARKS-1 loop
        if ((cx < (dx(i)+2)) and (cx > (dx(i)-2)) and (cy < (dy(i)+2)) and (cy > (dy(i)-2))) then 
          loop_res := '1'; 
        end if;
      end loop;


      counter_us := to_unsigned(DURATION - counter,5);
      if (loop_res = '1') and (timestamp = '1') then
        -- S_RGB <= "000000000000";
        S_RGB <= '0' & std_logic_vector(counter_us(2 downto 0)) & '0' & std_logic_vector(counter_us(2 downto 0)) & '0' & std_logic_vector(counter_us(2 downto 0));
      else 
        S_RGB <= "111111111111";
      end if;


    end if;
  end process;
  


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
    variable RGB5 : std_logic;
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
      fprint("Test write.", 1, X_IN, Y_IN, RGB5);        
      fprint(SPACE_FILL(100/6) & "The buttons pressed mask (1,2,3,A,4,5,6,B,7,8,9,C,0,F,E,D) is:", 10, X_IN, Y_IN, RGB);
      fprint(SPACE_FILL(100/2 - 8) & str_v & ".", 12, X_IN, Y_IN, RGB2);
      fprint(SPACE_FILL((100-30) / 2) & "Number of button presses: ", 15, X_IN, Y_IN, RGB3);
      fprint(SPACE_FILL(30) & SPACE_FILL((100-30) / 2) & strnum_v(1 to 5) & ".", 15, X_IN, Y_IN, RGB4);
      
      -- Commented out to run main task of this file, sparks.
      -- R_OUT <= (others => (RGB or RGB2 or RGB4 or RGB3 or RGB5));
      -- G_OUT <= (others => (RGB or RGB2 or RGB3 or RGB5));
      -- B_OUT <= (others => (RGB2 or RGB3 or RGB5));
    
    end if;
  end process;
  
    R_OUT <= R_IN and S_RGB(3 downto 0);
    G_OUT <= G_IN and S_RGB(7 downto 4);
    B_OUT <= B_IN and S_RGB(11 downto 8);

end RTL;