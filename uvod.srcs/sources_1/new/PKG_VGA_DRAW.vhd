library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

package PKG_VGA_DRAW is


	constant IMG_SCALE : integer range 1 to 4 := 3; -- has to be 1,2,3,4. Each new value doubles size
	constant COL_CHNL_BIT_WIDTH : integer := 4;

	constant CLK_PERIOD : time := 25  ns;
  constant X_RES : integer := 800;
  constant Y_RES : integer := 600;
  constant RECT_WIDTH : integer := 96;
  constant RECT_HEIGHT : integer := 32;
	constant Y_NUM_RECTS : integer := 4;

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

end package PKG_VGA_DRAW;


package body PKG_VGA_DRAW is 

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
