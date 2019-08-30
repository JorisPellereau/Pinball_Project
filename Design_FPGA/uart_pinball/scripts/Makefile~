#
#	Makefile for Compilation & Simulation with modelsim
#

# Repository Organization
# /(ROOT)
# 	|__ /scripts => Makefile
#	|__ /sources => VHD - V files
#	|__ /work    => Modelsim Libs



# 
ROOT=$(PWD)/..
WORK_DIR=$(ROOT)/work
SRC_DIR=$(ROOT)/sources
SCRIPTS_DIR=$(ROOT)/scripts


# Library List
LIB_1=lib_uart
LIB_2=lib_2
LIB_TB_TOP=lib_tb_top

VSIM1=/soft_thales/microsemi/LiberoSoC_v11.8/ModelSim/modeltech/linuxacoem/vsim

# .vhd file compilation
VCOM1=/soft_thales/microsemi/LiberoSoC_v11.8/ModelSim/modeltech/linuxacoem/vcom -nologo -work



# .v file compilation
VLOG1=vlog -nologo -work



all: 
	@echo "Makefile for compilation & Simulation with Modelsim"
	@echo ""
	@echo "Clean work repository : "
	@echo "make clean"
	@echo ""
	@echo "Prepare Modelsim Library :"
	@echo "make libs"
	@echo ""
	@echo "Compile VHD files :"
	@echo "make compile_vhd_src"
	@echo ""
	@echo "Compile V files :"
	@echo "make compile_v_src"
	@echo ""
	@echo "Run VHD simulations :"
	@echo "make run_test_reg_ctrl"
	@echo "make run_test_uart_ctrl"


# create work dir
create_dir:
	cd $(ROOT); \
	mkdir work;

# Delete files inside work dir.
clean:
	cd $(WORK_DIR); \
	rm -rRf *;


# prepare Modelsim Library
prepare_libs:
	cd $(WORK_DIR); \
	vlib ./${LIB_1}; \
	vlib ./$(LIB_TB_TOP); \
	vlib work

create_libs:
	cd $(WORK_DIR); \
	vmap $(LIB_TB_TOP) ./$(LIB_1);	


# prepare and create_dir
libs:  prepare_libs create_libs


# List of vhd file
src_vhd=	$(SRC_DIR)/pkg_uart.vhd \
		$(SRC_DIR)/pkg_uart_pinball.vhd \
		$(SRC_DIR)/reg_ctrl.vhd \
		$(SRC_DIR)/rx_uart.vhd \
		$(SRC_DIR)/tx_uart.vhd \
		$(SRC_DIR)/uart_mngt.vhd \
		$(SRC_DIR)/uart_ctrl.vhd \
		$(SRC_DIR)/test_reg_ctrl.vhd \
		$(SRC_DIR)/test_uart_ctrl.vhd


# List of v file
src_v=		$(SRC_DIR)/file_1.v \
		$(SRC_DIR)/file_2.v \
		$(SRC_DIR)/file_3.v \
		$(SRC_DIR)/file_4.v




# Compile vhd files in LIB_TB_TOP
compile_vhd_src : clean libs
	cd $(WORK_DIR); \
	$(VCOM1) $(LIB_TB_TOP) $(src_vhd);


# Compile v files in LIB_TB_TOP
compile_v_src : clean libs
	cd $(WORK_DIR); \
	$(VLOG1) $(LIB_TB_TOP) $(src_v);


# Launch VHD simulation in GUI
run_test_reg_ctrl :	compile_vhd_src
			cd $(WORK_DIR); \
			$(VSIM1) $(LIB_TB_TOP).test_reg_ctrl -l transcript.txt -do $(SCRIPTS_DIR)/run_test_reg_ctrl.do;

run_test_uart_ctrl : 	compile_vhd_src
			cd $(WORK_DIR); \
			$(VSIM1) $(LIB_TB_TOP).test_uart_ctrl -l transcript.txt -do $(SCRIPTS_DIR)/run_test_uart_ctrl.do;
			

# Launch modelsim Simulation in console
run_csl_1 : 	compile_vhd_src
		cd $(WORK_DIR); \
		vsim -c -wlf wave.wlf -t ps $(LIB_TB_TOP).arch_vhd  -l transcript.txt -do $(SCRIPTS_DIR)/run.do;
