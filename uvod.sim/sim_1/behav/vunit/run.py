from vunit import VUnit
import os

path = os.path.abspath(os.path.join(os.getcwd(), "../../../.."))
rtl_path = path + "/uvod.srcs/sources_1/**/*.vhd"
tb_path = path + "/uvod.srcs/sim_1/**/*.vhd"

vu = VUnit.from_argv()
vu.add_vhdl_builtins()
lib = vu.add_library("lib")
lib.add_source_files(rtl_path)
lib.add_source_files(tb_path)

tb_top = lib.test_bench("TB_VGA_DRAW")
vu.main()

