library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

package PKG_VGA_DRAW is


	constant IMG_SCALE : integer range 1 to 4 := 3; -- has to be 1,2,3,4. Each new value doubles size
	constant COL_CHNL_BIT_WIDTH : integer := 4;

	constant CLK_PERIOD : time := 25  ns;
  constant X_RES : integer := 800;
  constant Y_RES : integer := 600;
  constant X_RES_FULL : integer := 1056;
  constant Y_RES_FULL : integer := 628;
  constant RECT_WIDTH : integer := 96;
  constant RECT_HEIGHT : integer := 32;
	constant Y_NUM_RECTS : integer := 4;


  constant num_symbols : integer := 93;
  constant font_px_height : integer := 14;
  constant font_px_width : integer := 8;

  type t_vga_symbol is array (0 to font_px_height - 1) of std_logic_vector(7 downto 0);
  type t_vga_table is array (0 to num_symbols - 1) of t_vga_symbol; 
  -- Found on https://github.com/bochs-emu/VGABIOS/blob/master/vgabios/vgafonts.h
    constant vga_table : t_vga_table := (
    (x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00"),
    (x"00", x"00", x"18", x"3c", x"3c", x"3c", x"18", x"18", x"00", x"18", x"18", x"00", x"00", x"00"),
    (x"00", x"66", x"66", x"66", x"24", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00"),
    (x"00", x"00", x"6c", x"6c", x"fe", x"6c", x"6c", x"6c", x"fe", x"6c", x"6c", x"00", x"00", x"00"),
    (x"18", x"18", x"7c", x"c6", x"c2", x"c0", x"7c", x"06", x"86", x"c6", x"7c", x"18", x"18", x"00"),
    (x"00", x"00", x"00", x"00", x"c2", x"c6", x"0c", x"18", x"30", x"66", x"c6", x"00", x"00", x"00"),
    (x"00", x"00", x"38", x"6c", x"6c", x"38", x"76", x"dc", x"cc", x"cc", x"76", x"00", x"00", x"00"),
    (x"00", x"30", x"30", x"30", x"60", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00"),
    (x"00", x"00", x"0c", x"18", x"30", x"30", x"30", x"30", x"30", x"18", x"0c", x"00", x"00", x"00"),
    (x"00", x"00", x"30", x"18", x"0c", x"0c", x"0c", x"0c", x"0c", x"18", x"30", x"00", x"00", x"00"),
    (x"00", x"00", x"00", x"00", x"66", x"3c", x"ff", x"3c", x"66", x"00", x"00", x"00", x"00", x"00"),
    (x"00", x"00", x"00", x"00", x"18", x"18", x"7e", x"18", x"18", x"00", x"00", x"00", x"00", x"00"),
    (x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"18", x"18", x"18", x"30", x"00", x"00"),
    (x"00", x"00", x"00", x"00", x"00", x"00", x"fe", x"00", x"00", x"00", x"00", x"00", x"00", x"00"),
    (x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"18", x"18", x"00", x"00", x"00"),
    (x"00", x"00", x"02", x"06", x"0c", x"18", x"30", x"60", x"c0", x"80", x"00", x"00", x"00", x"00"),
    (x"00", x"00", x"7c", x"c6", x"ce", x"de", x"f6", x"e6", x"c6", x"c6", x"7c", x"00", x"00", x"00"),
    (x"00", x"00", x"18", x"38", x"78", x"18", x"18", x"18", x"18", x"18", x"7e", x"00", x"00", x"00"),
    (x"00", x"00", x"7c", x"c6", x"06", x"0c", x"18", x"30", x"60", x"c6", x"fe", x"00", x"00", x"00"),
    (x"00", x"00", x"7c", x"c6", x"06", x"06", x"3c", x"06", x"06", x"c6", x"7c", x"00", x"00", x"00"),
    (x"00", x"00", x"0c", x"1c", x"3c", x"6c", x"cc", x"fe", x"0c", x"0c", x"1e", x"00", x"00", x"00"),
    (x"00", x"00", x"fe", x"c0", x"c0", x"c0", x"fc", x"06", x"06", x"c6", x"7c", x"00", x"00", x"00"),
    (x"00", x"00", x"38", x"60", x"c0", x"c0", x"fc", x"c6", x"c6", x"c6", x"7c", x"00", x"00", x"00"),
    (x"00", x"00", x"fe", x"c6", x"06", x"0c", x"18", x"30", x"30", x"30", x"30", x"00", x"00", x"00"),
    (x"00", x"00", x"7c", x"c6", x"c6", x"c6", x"7c", x"c6", x"c6", x"c6", x"7c", x"00", x"00", x"00"),
    (x"00", x"00", x"7c", x"c6", x"c6", x"c6", x"7e", x"06", x"06", x"0c", x"78", x"00", x"00", x"00"),
    (x"00", x"00", x"00", x"18", x"18", x"00", x"00", x"00", x"18", x"18", x"00", x"00", x"00", x"00"),
    (x"00", x"00", x"00", x"18", x"18", x"00", x"00", x"00", x"18", x"18", x"30", x"00", x"00", x"00"),
    (x"00", x"00", x"06", x"0c", x"18", x"30", x"60", x"30", x"18", x"0c", x"06", x"00", x"00", x"00"),
    (x"00", x"00", x"00", x"00", x"00", x"7e", x"00", x"00", x"7e", x"00", x"00", x"00", x"00", x"00"),
    (x"00", x"00", x"60", x"30", x"18", x"0c", x"06", x"0c", x"18", x"30", x"60", x"00", x"00", x"00"),
    (x"00", x"00", x"7c", x"c6", x"c6", x"0c", x"18", x"18", x"00", x"18", x"18", x"00", x"00", x"00"),
    (x"00", x"00", x"7c", x"c6", x"c6", x"de", x"de", x"de", x"dc", x"c0", x"7c", x"00", x"00", x"00"),
    (x"00", x"00", x"10", x"38", x"6c", x"c6", x"c6", x"fe", x"c6", x"c6", x"c6", x"00", x"00", x"00"),
    (x"00", x"00", x"fc", x"66", x"66", x"66", x"7c", x"66", x"66", x"66", x"fc", x"00", x"00", x"00"),
    (x"00", x"00", x"3c", x"66", x"c2", x"c0", x"c0", x"c0", x"c2", x"66", x"3c", x"00", x"00", x"00"),
    (x"00", x"00", x"f8", x"6c", x"66", x"66", x"66", x"66", x"66", x"6c", x"f8", x"00", x"00", x"00"),
    (x"00", x"00", x"fe", x"66", x"62", x"68", x"78", x"68", x"62", x"66", x"fe", x"00", x"00", x"00"),
    (x"00", x"00", x"fe", x"66", x"62", x"68", x"78", x"68", x"60", x"60", x"f0", x"00", x"00", x"00"),
    (x"00", x"00", x"3c", x"66", x"c2", x"c0", x"c0", x"de", x"c6", x"66", x"3a", x"00", x"00", x"00"),
    (x"00", x"00", x"c6", x"c6", x"c6", x"c6", x"fe", x"c6", x"c6", x"c6", x"c6", x"00", x"00", x"00"),
    (x"00", x"00", x"3c", x"18", x"18", x"18", x"18", x"18", x"18", x"18", x"3c", x"00", x"00", x"00"),
    (x"00", x"00", x"1e", x"0c", x"0c", x"0c", x"0c", x"0c", x"cc", x"cc", x"78", x"00", x"00", x"00"),
    (x"00", x"00", x"e6", x"66", x"6c", x"6c", x"78", x"6c", x"6c", x"66", x"e6", x"00", x"00", x"00"),
    (x"00", x"00", x"f0", x"60", x"60", x"60", x"60", x"60", x"62", x"66", x"fe", x"00", x"00", x"00"),
    (x"00", x"00", x"c6", x"ee", x"fe", x"fe", x"d6", x"c6", x"c6", x"c6", x"c6", x"00", x"00", x"00"),
    (x"00", x"00", x"c6", x"e6", x"f6", x"fe", x"de", x"ce", x"c6", x"c6", x"c6", x"00", x"00", x"00"),
    (x"00", x"00", x"38", x"6c", x"c6", x"c6", x"c6", x"c6", x"c6", x"6c", x"38", x"00", x"00", x"00"),
    (x"00", x"00", x"fc", x"66", x"66", x"66", x"7c", x"60", x"60", x"60", x"f0", x"00", x"00", x"00"),
    (x"00", x"00", x"7c", x"c6", x"c6", x"c6", x"c6", x"d6", x"de", x"7c", x"0c", x"0e", x"00", x"00"),
    (x"00", x"00", x"fc", x"66", x"66", x"66", x"7c", x"6c", x"66", x"66", x"e6", x"00", x"00", x"00"),
    (x"00", x"00", x"7c", x"c6", x"c6", x"60", x"38", x"0c", x"c6", x"c6", x"7c", x"00", x"00", x"00"),
    (x"00", x"00", x"7e", x"7e", x"5a", x"18", x"18", x"18", x"18", x"18", x"3c", x"00", x"00", x"00"),
    (x"00", x"00", x"c6", x"c6", x"c6", x"c6", x"c6", x"c6", x"c6", x"c6", x"7c", x"00", x"00", x"00"),
    (x"00", x"00", x"c6", x"c6", x"c6", x"c6", x"c6", x"c6", x"6c", x"38", x"10", x"00", x"00", x"00"),
    (x"00", x"00", x"c6", x"c6", x"c6", x"c6", x"d6", x"d6", x"fe", x"7c", x"6c", x"00", x"00", x"00"),
    (x"00", x"00", x"c6", x"c6", x"6c", x"38", x"38", x"38", x"6c", x"c6", x"c6", x"00", x"00", x"00"),
    (x"00", x"00", x"66", x"66", x"66", x"66", x"3c", x"18", x"18", x"18", x"3c", x"00", x"00", x"00"),
    (x"00", x"00", x"fe", x"c6", x"8c", x"18", x"30", x"60", x"c2", x"c6", x"fe", x"00", x"00", x"00"),
    (x"00", x"00", x"3c", x"30", x"30", x"30", x"30", x"30", x"30", x"30", x"3c", x"00", x"00", x"00"),
    (x"00", x"00", x"80", x"c0", x"e0", x"70", x"38", x"1c", x"0e", x"06", x"02", x"00", x"00", x"00"),
    (x"00", x"00", x"3c", x"0c", x"0c", x"0c", x"0c", x"0c", x"0c", x"0c", x"3c", x"00", x"00", x"00"),
    (x"10", x"38", x"6c", x"c6", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00"),
    (x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"ff", x"00"),
    (x"30", x"30", x"18", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00"),
    (x"00", x"00", x"00", x"00", x"00", x"78", x"0c", x"7c", x"cc", x"cc", x"76", x"00", x"00", x"00"),
    (x"00", x"00", x"e0", x"60", x"60", x"78", x"6c", x"66", x"66", x"66", x"7c", x"00", x"00", x"00"),
    (x"00", x"00", x"00", x"00", x"00", x"7c", x"c6", x"c0", x"c0", x"c6", x"7c", x"00", x"00", x"00"),
    (x"00", x"00", x"1c", x"0c", x"0c", x"3c", x"6c", x"cc", x"cc", x"cc", x"76", x"00", x"00", x"00"),
    (x"00", x"00", x"00", x"00", x"00", x"7c", x"c6", x"fe", x"c0", x"c6", x"7c", x"00", x"00", x"00"),
    (x"00", x"00", x"38", x"6c", x"64", x"60", x"f0", x"60", x"60", x"60", x"f0", x"00", x"00", x"00"),
    (x"00", x"00", x"00", x"00", x"00", x"76", x"cc", x"cc", x"cc", x"7c", x"0c", x"cc", x"78", x"00"),
    (x"00", x"00", x"e0", x"60", x"60", x"6c", x"76", x"66", x"66", x"66", x"e6", x"00", x"00", x"00"),
    (x"00", x"00", x"18", x"18", x"00", x"38", x"18", x"18", x"18", x"18", x"3c", x"00", x"00", x"00"),
    (x"00", x"00", x"06", x"06", x"00", x"0e", x"06", x"06", x"06", x"06", x"66", x"66", x"3c", x"00"),
    (x"00", x"00", x"e0", x"60", x"60", x"66", x"6c", x"78", x"6c", x"66", x"e6", x"00", x"00", x"00"),
    (x"00", x"00", x"38", x"18", x"18", x"18", x"18", x"18", x"18", x"18", x"3c", x"00", x"00", x"00"),
    (x"00", x"00", x"00", x"00", x"00", x"ec", x"fe", x"d6", x"d6", x"d6", x"c6", x"00", x"00", x"00"),
    (x"00", x"00", x"00", x"00", x"00", x"dc", x"66", x"66", x"66", x"66", x"66", x"00", x"00", x"00"),
    (x"00", x"00", x"00", x"00", x"00", x"7c", x"c6", x"c6", x"c6", x"c6", x"7c", x"00", x"00", x"00"),
    (x"00", x"00", x"00", x"00", x"00", x"dc", x"66", x"66", x"66", x"7c", x"60", x"60", x"f0", x"00"),
    (x"00", x"00", x"00", x"00", x"00", x"76", x"cc", x"cc", x"cc", x"7c", x"0c", x"0c", x"1e", x"00"),
    (x"00", x"00", x"00", x"00", x"00", x"dc", x"76", x"66", x"60", x"60", x"f0", x"00", x"00", x"00"),
    (x"00", x"00", x"00", x"00", x"00", x"7c", x"c6", x"70", x"1c", x"c6", x"7c", x"00", x"00", x"00"),
    (x"00", x"00", x"10", x"30", x"30", x"fc", x"30", x"30", x"30", x"36", x"1c", x"00", x"00", x"00"),
    (x"00", x"00", x"00", x"00", x"00", x"cc", x"cc", x"cc", x"cc", x"cc", x"76", x"00", x"00", x"00"),
    (x"00", x"00", x"00", x"00", x"00", x"66", x"66", x"66", x"66", x"3c", x"18", x"00", x"00", x"00"),
    (x"00", x"00", x"00", x"00", x"00", x"c6", x"c6", x"d6", x"d6", x"fe", x"6c", x"00", x"00", x"00"),
    (x"00", x"00", x"00", x"00", x"00", x"c6", x"6c", x"38", x"38", x"6c", x"c6", x"00", x"00", x"00"),
    (x"00", x"00", x"00", x"00", x"00", x"c6", x"c6", x"c6", x"c6", x"7e", x"06", x"0c", x"f8", x"00"),
    (x"00", x"00", x"00", x"00", x"00", x"fe", x"cc", x"18", x"30", x"66", x"fe", x"00", x"00", x"00"),
    (x"00", x"00", x"0e", x"18", x"18", x"18", x"70", x"18", x"18", x"18", x"0e", x"00", x"00", x"00"),
    (x"00", x"00", x"70", x"18", x"18", x"18", x"0e", x"18", x"18", x"18", x"70", x"00", x"00", x"00")
    );


  constant VGA_TABLE_STRING : string (1 to num_symbols) := " !""#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{}"; 



	type T_CHNL_BEHAVE is (RAMP_UP, RAMP_DOWN, ZERO, FULL);
  type T_CHNL_BEHAVE_ARR is array (0 to 5) of T_CHNL_BEHAVE;

  constant R_BEHAVE : T_CHNL_BEHAVE_ARR := (FULL, RAMP_DOWN, ZERO, ZERO, RAMP_UP, FULL);
  constant G_BEHAVE : T_CHNL_BEHAVE_ARR := (RAMP_UP, FULL, FULL, RAMP_DOWN, ZERO, ZERO);
  constant B_BEHAVE : T_CHNL_BEHAVE_ARR := (ZERO, ZERO, RAMP_UP, FULL, FULL, RAMP_DOWN);

	function LOG2_DISCRETE(VAL_IN : integer) return integer;
	procedure DRAW_GRADIENTS (signal STATE_IN : in T_CHNL_BEHAVE; signal X_CURSOR : in std_logic_vector; signal COL_OUT : inout std_logic_vector); 
	function LIGHTEN(COLOR : std_logic_vector; VALUE : std_logic_vector) return std_logic_vector;
	function DARKEN(COLOR : std_logic_vector; VALUE : std_logic_vector) return std_logic_vector;
	function SET_BRIGHTNESS(COLOR : std_logic_vector; VALUE : std_logic_vector; LIGHT_nDARK : std_logic; ENABLE : std_logic) return std_logic_vector;

  type fprint_arr is array (natural range <>) of integer range 0 to num_symbols;
  function SPACE_FILL(NUM : integer) return string;
  function fprint_ids(STR_IN : string) return fprint_arr;
  procedure fprint(STR_IN : in string; 
                    LINE_NUM  : in integer;
                    X_IN  : in std_logic_vector;
                    Y_IN  : in std_logic_vector;
                     RGB   : out std_logic
  );
end package PKG_VGA_DRAW;


package body PKG_VGA_DRAW is 

  function SPACE_FILL(NUM : integer) return string is 
    variable RET_STR : string (1 to NUM);
  begin 
    assert RET_STR'length > 0 severity error;
    for i in 1 to RET_STR'length loop 
      RET_STR(i) := ' ';
    end loop;
    return RET_STR;
  end function;

  function fprint_ids(STR_IN : string) return fprint_arr is 
    constant SIZE     : integer                 := STR_IN'length;
    variable v_fprint : fprint_arr (1 to SIZE)  := (others => 0);
  begin 
    for i in 1 to SIZE loop 
      for j in 1 to VGA_TABLE_STRING'length loop 
        if STR_IN(i) = VGA_TABLE_STRING(j) then
          v_fprint(i) := j - 1;
          next;
        end if;
      end loop;
    end loop;
    return v_fprint;
  end function;

  procedure fprint(STR_IN : in string; 
                    LINE_NUM  : in integer;
                    X_IN  : in std_logic_vector;
                    Y_IN  : in std_logic_vector;
                    RGB   : out std_logic
  ) is 
    constant SIZE     : integer := STR_IN'length;
    constant ids      : fprint_arr (0 to SIZE-1)  := fprint_ids(STR_IN);
    variable cur_idx  : unsigned(6 downto 0) := (others => '0');
    variable x_mod    : unsigned(2 downto 0) := (others => '0');
    variable cur_idy  : unsigned(5 downto 0) := (others => '0');
    variable y_mod    : unsigned(3 downto 0) := (others => '0');
    variable id       : integer range 0 to num_symbols := 0;
    variable strip    : std_logic_vector(font_px_width-1 downto 0) := (others => '0');
  begin 
    cur_idx := unsigned(X_IN(9 downto 3));
    x_mod   := unsigned(X_IN(2 downto 0));
    cur_idy := unsigned(Y_IN(9 downto 4));
    y_mod   := unsigned(Y_IN(3 downto 0));  
    

    if (to_integer(cur_idx) <= (SIZE-1)) and (to_integer(cur_idy) = LINE_NUM) and (y_mod <= (font_px_height-1)) then 
      
      id      := ids(to_integer(cur_idx));
      strip   := vga_table(id)(to_integer(y_mod));

      if strip(7 - to_integer(x_mod)) = '1' then 
        RGB := '1';
      else
        RGB := '0';
      end if;
    else 
      RGB := '0';
    end if;

  end procedure;

function LOG2_DISCRETE(VAL_IN : integer) return integer is 
begin

	for i in 0 to 31 loop
		if VAL_IN = 2**i then
			return i;
		end if;
	end loop;
		
	report "Error, you used LOG2_DISCRETE function for an integer too large, OR used a value that is not a 2^N product" severity error;
	return 0;
end function LOG2_DISCRETE;

  procedure DRAW_GRADIENTS (signal STATE_IN : in T_CHNL_BEHAVE; signal X_CURSOR : in std_logic_vector; signal COL_OUT : inout std_logic_vector) is 
  begin 

    case STATE_IN is 
      when RAMP_UP =>
        COL_OUT <= X_CURSOR(COL_CHNL_BIT_WIDTH - 1 + (IMG_SCALE - 1) downto (IMG_SCALE - 1));
      when RAMP_DOWN =>
        COL_OUT <= not(X_CURSOR(COL_CHNL_BIT_WIDTH - 1 + (IMG_SCALE - 1) downto (IMG_SCALE - 1)));
      when FULL =>
        COL_OUT <= "1111";
      when others =>
        COL_OUT <= "0000";
      end case;

  end procedure DRAW_GRADIENTS;

  function LIGHTEN(COLOR : std_logic_vector; VALUE : std_logic_vector) return std_logic_vector is  
    variable MIX_COL : std_logic_vector(COL_CHNL_BIT_WIDTH downto 0);
  begin 
    MIX_COL := std_logic_vector(unsigned('0' & COLOR) + unsigned('0' & VALUE));
    if unsigned(MIX_COL) > ((2**COL_CHNL_BIT_WIDTH) - 1) then 
      MIX_COL := "01111";
    end if;

    return MIX_COL(MIX_COL'left-1 downto 0);

  end function LIGHTEN;

  function DARKEN(COLOR : std_logic_vector; VALUE : std_logic_vector) return std_logic_vector is 
    variable MIX_COL : std_logic_vector(COL_CHNL_BIT_WIDTH downto 0);
  begin 
    MIX_COL := std_logic_vector(unsigned('0' & COLOR) - unsigned('0' & VALUE));
    if MIX_COL(MIX_COL'left) = '1' then 
      MIX_COL := "00000";
    end if;

    return MIX_COL(MIX_COL'left-1 downto 0);

  end function DARKEN;

  function SET_BRIGHTNESS(COLOR : std_logic_vector; VALUE : std_logic_vector; LIGHT_nDARK : std_logic; ENABLE : std_logic) return std_logic_vector is 
  begin 
    if ENABLE = '1' then
      if LIGHT_nDARK = '1' then 
        return LIGHTEN(COLOR => COLOR, VALUE => VALUE);
      else 
        return DARKEN(COLOR => COLOR, VALUE => not(VALUE));
      end if;
    else 
      return COLOR;
    end if;

  end function SET_BRIGHTNESS;

end package body PKG_VGA_DRAW;
