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
	signal CLK_UUT : std_logic := '0';
	signal X_IN_UUT : std_logic_vector(10 downto 0) := (others => '0');
	signal Y_IN_UUT : std_logic_vector(10 downto 0) := (others => '0');

	signal R_OUT_UUT : std_logic_vector(3 downto 0);
	signal G_OUT_UUT : std_logic_vector(3 downto 0);
	signal B_OUT_UUT : std_logic_vector(3 downto 0);

	signal SIM_STOP : std_logic := '0';
begin

	START_END_SIM : process
	begin 
	test_runner_setup(runner, runner_cfg);

	wait until SIM_STOP = '1';
	wait for 10 us;

	test_runner_cleanup(runner);
	end process START_END_SIM;

	UUT : entity work.VGA_DRAW(RTL)
	port map (
		CLK  =>  CLK_UUT,
		X_IN => X_IN_UUT,
		Y_IN => Y_IN_UUT,
		R_OUT => R_OUT_UUT,
		G_OUT => G_OUT_UUT,
		B_OUT => B_OUT_UUT
	);

	-- Clock stimulus
	CLK_UUT <= not(CLK_UUT) after CLK_PERIOD / 2;

	GENERATE_X_Y : process(CLK_UUT) is

	begin

		if rising_edge(CLK_UUT) then 
			if unsigned(X_IN_UUT) < X_RES then
				X_IN_UUT <= std_logic_vector(unsigned(X_IN_UUT) + 1);			
			else 
				X_IN_UUT <= (others => '0');

				if unsigned(Y_IN_UUT) < Y_RES then
					Y_IN_UUT <= std_logic_vector(unsigned(Y_IN_UUT) + 1);
				else 
					Y_IN_UUT <= (others => '0');
					SIM_STOP <= '1';
				end if;	

			end if;
		
		end if;
	end process GENERATE_X_Y;

end Behavioral;
