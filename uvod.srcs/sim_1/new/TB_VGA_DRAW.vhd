library vunit_lib;
context vunit_lib.vunit_context;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.PKG_VGA_DRAW.ALL;

entity TB_VGA_DRAW is
	generic (runner_cfg : string);
end TB_VGA_DRAW;

architecture Behavioral of TB_VGA_DRAW is
	-- UUT inputs
	signal CLK_UUT 	: std_logic 										:= '0';
	signal X_IN_UUT : std_logic_vector(10 downto 0) := (others => '0');
	signal Y_IN_UUT : std_logic_vector(10 downto 0) := (others => '0');
		signal BUTTONS_IN_UUT : std_logic_vector(15 downto 0) := (others => '0');
		signal BTN_PRESS_VALID_IN_UUT : std_logic;
		signal BTN_RELEASE_VALID_IN_UUT : std_logic;
	
	-- UUT outputs
	signal R_OUT_UUT : std_logic_vector(3 downto 0);
	signal G_OUT_UUT : std_logic_vector(3 downto 0);
	signal B_OUT_UUT : std_logic_vector(3 downto 0);

	signal	CLK_5M_UUT2 : std_logic := '0';
	signal	ROWS_IN_UUT2 : std_logic_vector(3 downto 0) := (others => '1');
	signal	COLUMNS_OUT_UUT2 : std_logic_vector(3 downto 0);
	signal	BUTTONS_OUT_UUT2 : std_logic_vector(15 downto 0);
	signal	t2_UUT2 : std_logic;
	signal	t3_UUT2 : std_logic;
	signal	t4_UUT2 : std_logic;
	signal	t1_UUT2 : std_logic;
	signal	VALID_PRESS_OUT_UUT : std_logic;
	signal	VALID_RELEASE_OUT_UUT : std_logic;

	-- Stops simulation when = '1'
	signal SIM_STOP : std_logic := '0';

	type OUT_FILE is file of character;
	
	-- Writes an integer number into 4 bytes (little endian). For BMP purposes
	procedure WRITE_VAL_4BYTES(file WR_FILE : out_file; constant VAL_IN : in integer) is
		constant NUM_BYTES : integer := 4;
		constant WR_VAL : signed(NUM_BYTES*8 downto 0) := to_signed(VAL_IN, NUM_BYTES*8+1);
		variable WR_VAL_UNSIGNED : std_logic_vector(NUM_BYTES*8 - 1 downto 0) := (others => '0');
	begin 
		WR_VAL_UNSIGNED := std_logic_vector(WR_VAL(NUM_BYTES*8 - 1 downto 0));
		for i in 0 to (NUM_BYTES-1) loop
			write(WR_FILE, character'val(to_integer(unsigned(WR_VAL_UNSIGNED(7 + i*8 downto 0 + i*8)))));
		end loop;
	end procedure WRITE_VAL_4BYTES;

	-- Procedure writes an image file
	procedure WRITE_BMP is
		
		file BMP_FILE : OUT_FILE;
		constant BMP_FILE_NAME : string := "output_image.bmp";

		constant NON_PIC_BYTES : integer := 54;
		constant INFO_HEADER_SIZE : integer := 40;
		constant BYTES_PER_PIXEL : integer := 2;
		variable V_8BITS : unsigned(7 downto 0);
		variable tmp : std_logic_vector(7 downto 0);
	begin 
		
		-- Opens image file
		file_open(BMP_FILE, BMP_FILE_NAME, write_mode);
		
		--------------------------
		--HEADER
		--------------------------
		-- Signature
		write(BMP_FILE, character'val(character'pos('B'))); 
		write(BMP_FILE, character'val(character'pos('M'))); 
		
		-- Number of all bytes, width (800) * height (600) * num of bytes per pixel (2) + non-picture bytes (54)
		WRITE_VAL_4BYTES(BMP_FILE, X_RES * Y_RES * BYTES_PER_PIXEL + NON_PIC_BYTES);
		
		-- Reserved
		WRITE_VAL_4BYTES(BMP_FILE, 0);
		
		-- Non-picture bytes (54) offset
		WRITE_VAL_4BYTES(BMP_FILE, NON_PIC_BYTES);
		
		--------------------------
		--INFO HEADER
		--------------------------
		-- Info header size (40)
		WRITE_VAL_4BYTES(BMP_FILE, INFO_HEADER_SIZE);
		
		-- Image width 
		WRITE_VAL_4BYTES(BMP_FILE, X_RES);
		
		-- Image height. Set to negative image height. 
		-- Needed to avoid image being upside down.
		WRITE_VAL_4BYTES(BMP_FILE, - Y_RES);

		-- Reserved (planes)
		write(BMP_FILE, character'val(1)); 
		write(BMP_FILE, character'val(0)); 
		
		-- Bits per pixel. BMP doesn't support 12 bits per pixels,
		-- the closest is 16 bits (2 bytes)
		write(BMP_FILE, character'val(BYTES_PER_PIXEL*8)); 
		write(BMP_FILE, character'val(0)); 
		
		-- Compression
		WRITE_VAL_4BYTES(BMP_FILE, 0);

		-- Pixel data size, width (800) * height (600) * num of bytes per pixel (2);
		WRITE_VAL_4BYTES(BMP_FILE, X_RES * Y_RES * BYTES_PER_PIXEL);
		
		-- Image width in ppm (pixels per meter)
		-- ~ 100 DPI --> ppm = DPI / 1 inch = 100 / 0.0254 ~= 3937
		--3937 (dec) = 111101100001 (bin)
		--             --------|----
		-- 	   		   11110110 0001000
		-- 00010000 (bin) = 16 (dec)
		-- 11110110 (bin) = 246 (dec)
		write(BMP_FILE, character'val(0)); 
		write(BMP_FILE, character'val(0)); 
		write(BMP_FILE, character'val(16));	
		write(BMP_FILE, character'val(246));

		-- Image height in ppm (pixels per meter), same as above
		write(BMP_FILE, character'val(0)); 
		write(BMP_FILE, character'val(0)); 
		write(BMP_FILE, character'val(16)); 
		write(BMP_FILE, character'val(246)); 
		
		-- Colors used
		WRITE_VAL_4BYTES(BMP_FILE, 0);
		
		-- Number of important colors
		WRITE_VAL_4BYTES(BMP_FILE, 0);
			
		-- PIXEL DATA
		for i in 1 to X_RES_FULL * Y_RES_FULL loop
			wait until rising_edge(CLK_UUT);

			-- Writes pixels if in visible area
			if (unsigned(X_IN_UUT) < X_RES) and (unsigned(Y_IN_UUT) < Y_RES) then
				tmp := G_OUT_UUT(1 downto 0) & '0' & B_OUT_UUT & '0';
				V_8BITS := unsigned(tmp);
				write(BMP_FILE, character'val(to_integer(V_8BITS)));

				tmp := '0' & R_OUT_UUT & '0' & G_OUT_UUT(3 downto 2);
				V_8BITS := unsigned(tmp);
				write(BMP_FILE, character'val(to_integer(V_8BITS)));
			end if;

		end loop;

		-- Closes image file
		file_close(BMP_FILE);

		wait;
	
	end procedure WRITE_BMP;

	
begin

	-- Initializes simulation 
	INIT_SIM : process
	variable abc : std_logic;
	begin 
	-- abc := "hello";
		-- Starts vunit runner
		test_runner_setup(runner, runner_cfg);

		-- Waits for the simulation to stop
		wait until SIM_STOP = '1';

		-- Waits for all the processes to finish
		wait for 1 us;

		-- Ends vunit runner and simulation
		test_runner_cleanup(runner);
	end process INIT_SIM;

	-- Component instantiation
	UUT : entity work.VGA_DRAW(RTL)
	port map (
		CLK  	=> CLK_UUT,
		X_IN 	=> X_IN_UUT,
		Y_IN 	=> Y_IN_UUT,
		BUTTONS_IN 	=> BUTTONS_IN_UUT,
		BTN_RELEASE_VALID_IN 	=> BTN_RELEASE_VALID_IN_UUT,
		BTN_PRESS_VALID_IN 	=> BTN_PRESS_VALID_IN_UUT,
		R_OUT => R_OUT_UUT,
		G_OUT => G_OUT_UUT,
		B_OUT => B_OUT_UUT
	);

	-- Component instantiation
	UUT2 : entity work.BUTTON_MATRIX(RTL)
	port map (
		CLK_5M		=> CLK_5M_UUT2		,
		CLK_40M		=> CLK_UUT		,
		ROWS_IN		=> ROWS_IN_UUT2		,
		COLUMNS_OUT	=> COLUMNS_OUT_UUT2	,
		BUTTONS_OUT	=> BUTTONS_OUT_UUT2	,
		VALID_PRESS_OUT	=> VALID_PRESS_OUT_UUT,	
		VALID_RELEASE_OUT	=> VALID_RELEASE_OUT_UUT
	);
	
	
	CLK_5M_UUT2 	<= 		not CLK_5M_UUT2 after 200 ns; 
	ROWS_IN_UUT2 <= "0111" when ((COLUMNS_OUT_UUT2 = "0111") and (now > 5 ms) and (now < 6 ms)) 
			   else "1011" when ((COLUMNS_OUT_UUT2 = "1101") and (now > 6.3 ms) and (now < 7.3 ms))
			   	else "1111";

	-- Clock stimulus
	CLK_UUT <= not(CLK_UUT) after CLK_PERIOD / 2;

	-- Stimulates x and y cursors
	STIM_X_Y : process(CLK_UUT) is
	begin
		if rising_edge(CLK_UUT) then 
			if unsigned(X_IN_UUT) < X_RES_FULL then
				X_IN_UUT <= std_logic_vector(unsigned(X_IN_UUT) + 1);			
			else 
				X_IN_UUT <= (others => '0'); 
				if unsigned(Y_IN_UUT) < Y_RES_FULL then
					Y_IN_UUT <= std_logic_vector(unsigned(Y_IN_UUT) + 1);
				else 
					Y_IN_UUT <= (others => '0');
					SIM_STOP <= '1';
				end if;	
			end if;
		end if;
	end process STIM_X_Y;
	
	-- Writes .bmp image file
	WRITE_BMP;


end Behavioral;
