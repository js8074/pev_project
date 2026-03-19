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



begin


  -- Create segments for color rectangle
  SEGMENTS <= unsigned(X_IN(G_COL_CHNL_BIT_WIDTH + (G_IMG_SCALE - 1) + SEGMENTS'left downto G_COL_CHNL_BIT_WIDTH + (G_IMG_SCALE - 1))) mod 6;

  -- Set states for each color using seqment value
  CUR_R_STATE <= R_BEHAVE(to_integer(SEGMENTS));
  CUR_G_STATE <= G_BEHAVE(to_integer(SEGMENTS));
  CUR_B_STATE <= B_BEHAVE(to_integer(SEGMENTS));


  -- Draws gradients. These gradients look like trapezoidal commutation for BLDC:
  --        _    __
  -- RED     \__/  \
  --         __    _ 
  -- GREEN  /  \__/
  --           __
  -- BLUE   __/  \__
  DRAW_GRADIENTS(CUR_R_STATE, X_IN, RSIG);
  DRAW_GRADIENTS(CUR_G_STATE, X_IN, GSIG);
  DRAW_GRADIENTS(CUR_B_STATE, X_IN, BSIG);

  DRAW : process(CLK) is
    constant SELECT_DARK_LIGHT : integer := (G_COL_CHNL_BIT_WIDTH + (G_IMG_SCALE - 1) + LOG2_DISCRETE(Y_NUM_RECTS) -1); 
  begin 
    if rising_edge(CLK) then
      if (unsigned(X_IN(X_IN'left downto (G_IMG_SCALE - 1))) < RECT_WIDTH) and (unsigned(Y_IN) < ((2**(G_IMG_SCALE - 1))*(2**4)*Y_NUM_RECTS)) then 

        -- Takes signals that were alerady traced above and sets brightness. It darkens top quater of the image and brightens bottom quater of the image
        R_OUT <= SET_BRIGHTNESS(COLOR => RSIG, VALUE => std_logic_vector(Y_IN(G_COL_CHNL_BIT_WIDTH-1 + (G_IMG_SCALE-1) downto (G_IMG_SCALE - 1))), LIGHT_nDARK => Y_IN(SELECT_DARK_LIGHT), ENABLE => (Y_IN(SELECT_DARK_LIGHT - 1) xnor Y_IN(SELECT_DARK_LIGHT)));
        G_OUT <= SET_BRIGHTNESS(COLOR => GSIG, VALUE => std_logic_vector(Y_IN(G_COL_CHNL_BIT_WIDTH-1 + (G_IMG_SCALE-1) downto (G_IMG_SCALE - 1))), LIGHT_nDARK => Y_IN(SELECT_DARK_LIGHT), ENABLE => (Y_IN(SELECT_DARK_LIGHT - 1) xnor Y_IN(SELECT_DARK_LIGHT)));
        B_OUT <= SET_BRIGHTNESS(COLOR => BSIG, VALUE => std_logic_vector(Y_IN(G_COL_CHNL_BIT_WIDTH-1 + (G_IMG_SCALE-1) downto (G_IMG_SCALE - 1))), LIGHT_nDARK => Y_IN(SELECT_DARK_LIGHT), ENABLE => (Y_IN(SELECT_DARK_LIGHT - 1) xnor Y_IN(SELECT_DARK_LIGHT)));

      else 
        R_OUT <= (others => '0');
        G_OUT <= (others => '0');
        B_OUT <= (others => '0');

      end if;
    end if;

  end process DRAW;



end RTL;