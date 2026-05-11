library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.PKG_VGA_DRAW.ALL;

 
entity BUTTON_MATRIX is
  generic (
    -- Row length, column length must be the same 
		G_ROW                   : in integer := 4;

    -- Reading frequency = 5MHz / (G_CLK_DIV * 2) 
    G_CLK_DIV               : in integer := 64;
    -- What's meant by button reading frequency is time between two buttons being checked. Therefore it takes 

    G_DEBOUNCE_COUNTER_SIZE : in integer range 2 to 32 := 16
    -- Debounce filter counter size. When hange on a button value is
    -- detected, a counter has to start counting up. If it reaches this value, a button event is confirmed.  -- 
    -- Counter resets if old value appears within counter is operating. 
    
	);
  port (
    -- Input clock 
		CLK_5M         : in std_logic;

    -- Input clock. Output validity data is synchornized with this clock. Everything else is 
    -- either 5 MHz or lower.
		CLK_40M         : in std_logic;
    
    -- Keyboard rows are read
    ROWS_IN  : in std_logic_vector(G_ROW-1 downto 0);
    
    -- Keyboard columns are stimulated
    COLUMNS_OUT : out std_logic_vector(G_ROW-1 downto 0);
    
    -- Output vector of 16 elements, each for each button
    BUTTONS_OUT : out std_logic_vector(G_ROW*G_ROW - 1 downto 0);

    -- Output validity in case of a value change
    VALID_PRESS_OUT   : out std_logic;
    
    -- Output validity in case of a value change
    VALID_RELEASE_OUT   : out std_logic;

    -- (In order) Button 4, 2, E, C
    TOP_BTN_0 : out std_logic;
    TOP_BTN_1 : out std_logic;
    TOP_BTN_2 : out std_logic;
    TOP_BTN_3 : out std_logic
    
  );

end BUTTON_MATRIX;
 
architecture RTL of BUTTON_MATRIX is

  -- signal S_ROWS    : std_logic_vector(G_ROW-1 downto 0);
  -- signal COLUMNS : std_logic_vector(G_ROW-1 downto 0);
  signal S_COLUMNS : std_logic_vector(G_ROW-1 downto 0);

  signal ROWS_FF1    : std_logic_vector(G_ROW-1 downto 0);
  signal ROWS_FF2    : std_logic_vector(G_ROW-1 downto 0);

  -- Clock division signals
  signal CLK_LOW_F : std_logic := '0'; 
  signal LOW_F_CNT : integer := G_CLK_DIV; 

  -- Vector with button values
  signal BUTTONS_SIG_FILT : std_logic_vector(BUTTONS_OUT'range) := (others => '1');
  signal BUTTONS_SIG : std_logic_vector(BUTTONS_OUT'range);
  
  -- Counter signals - keyboard stimulation and reading
  signal CNTR         : integer range 0 to G_ROW*G_ROW - 1 := 0; 

  type T_NOTONEHOT is array (0 to G_ROW-1) of std_logic_vector(G_ROW-1 downto 0);

  signal  VALID   :  std_logic;
  signal  VALID_FF   :  std_logic;
  
  -- returns negated onehot (1110, 1101, 1011, 0111)
  function F_NOTONEHOT return T_NOTONEHOT is 
    variable V_NOTONEHOT : T_NOTONEHOT := (others => (others => '1'));
  begin 
    for i in 0 to G_ROW - 1 loop 
      V_NOTONEHOT(i) := not(std_logic_vector(to_unsigned(2**i, G_ROW)));
    end loop;
    return V_NOTONEHOT;
  end function F_NOTONEHOT;

  type T_DBNC_CNT is array (0 to BUTTONS_OUT'length - 1) of integer range 0 to G_DEBOUNCE_COUNTER_SIZE;
  signal DBNC_CNT : T_DBNC_CNT := (others => 0);
  
begin

  -- Clock division
  CLK_DIV : process(CLK_5M) is 
  begin 
    if rising_edge(CLK_5M) then 

      if LOW_F_CNT /= 0 then 
        LOW_F_CNT <= LOW_F_CNT - 1;
      else 
        LOW_F_CNT <= G_CLK_DIV;
        CLK_LOW_F <= not CLK_LOW_F;
      end if;
    
    end if;
  end process;
  
  -- Buttons vector output. Matrix keyboard has inverted logic, so one negation is needed
  BUTTONS_OUT(2 downto 0) <= not BUTTONS_SIG_FILT(6 downto 4);
  BUTTONS_OUT(3) <= not BUTTONS_SIG_FILT(3);

  BUTTONS_OUT(6 downto 4) <= not BUTTONS_SIG_FILT(10 downto 8);
  BUTTONS_OUT(7) <= not BUTTONS_SIG_FILT(7);

  BUTTONS_OUT(10 downto 8) <= not BUTTONS_SIG_FILT(14 downto 12);
  BUTTONS_OUT(11) <= not BUTTONS_SIG_FILT(11);
  
  BUTTONS_OUT(14 downto 12) <= not BUTTONS_SIG_FILT(2 downto 0);
  BUTTONS_OUT(15) <= not BUTTONS_SIG_FILT(15);

  
  COLUMNS_OUT <= S_COLUMNS;


 
  TOP_BTN_0 <= (not BUTTONS_SIG_FILT(5));
  TOP_BTN_1 <= (not BUTTONS_SIG_FILT(8));
  TOP_BTN_2 <= (not BUTTONS_SIG_FILT(11));
  TOP_BTN_3 <= (not BUTTONS_SIG_FILT(2));



  -- Keyboard stimulation and reading
  KBD_STIM_AND_READ : process(CLK_LOW_F) is 
    -- variable CUR_ROW 
  begin 
    if rising_edge(CLK_LOW_F) then

      -- Increment counter
      if CNTR < (G_ROW*G_ROW - 1) then 
        CNTR <= CNTR + 1;
      else 
        CNTR <= 0;
      end if;

      -- Stimulate each input column
      S_COLUMNS <= F_NOTONEHOT(CNTR / 4);

      -- Read value of every row
      BUTTONS_SIG(CNTR) <= ROWS_FF2(CNTR MOD 4);
      -- List of buttons in order from 15 to 0:
      --1 2 3 A 4 5 6 B 7 8 9 C * 0 # D
      
    end if;
  end process KBD_STIM_AND_READ;


  -- Double flop all data incoming into 
  DBL_FLOP : process (CLK_LOW_F) is
  begin
    if rising_edge(CLK_LOW_F) then
      
      ROWS_FF1 <= ROWS_IN;
      ROWS_FF2 <= ROWS_FF1;
    end if;
  end process DBL_FLOP;

  -- Output validity process, works at 40 MHz
  OUTPUT_VALIDITY : process (CLK_40M) is
  begin
    if rising_edge(CLK_40M) then
      VALID_FF <= VALID;
      if VALID_FF = '0' and VALID = '1' then 
        VALID_RELEASE_OUT       <= '0';
        VALID_PRESS_OUT <= '1';
      elsif VALID_FF = '1' and VALID = '0' then 
        VALID_RELEASE_OUT       <= '1';
        VALID_PRESS_OUT <= '0';
      else 
        VALID_RELEASE_OUT       <= '0';
        VALID_PRESS_OUT <= '0';
      end if;
    end if;
  end process OUTPUT_VALIDITY;
  
  
  -- Button debounce
  BTN_DEBOUNC_FILT : process(CLK_LOW_F) is 
  begin
    if rising_edge(CLK_LOW_F) then

      if BUTTONS_SIG(CNTR) /= BUTTONS_SIG_FILT(CNTR) then
        -- If a new state is detected

        if DBNC_CNT(CNTR) < (G_DEBOUNCE_COUNTER_SIZE - 1) then
          -- Increment counter 
          DBNC_CNT(CNTR) <= DBNC_CNT(CNTR) + 1;
          VALID <= '0';
        else 
          -- If counter is at max, apply detected state and reset counter
          BUTTONS_SIG_FILT(CNTR) <= not BUTTONS_SIG_FILT(CNTR);
          DBNC_CNT(CNTR) <= 0;
          -- When a button state changes, and a button is being pressed VALID = '1'
          if BUTTONS_SIG_FILT(CNTR) = '1' then 
            VALID <= '1';
          else 
            VALID <= '0';
          end if;
        end if;
      else
        -- If no new value is detected, keep/reset counter to zero
        DBNC_CNT(CNTR) <= 0;
        VALID <= '0';
      end if;
    end if;
  end process BTN_DEBOUNC_FILT;



end RTL;