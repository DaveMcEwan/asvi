
include mk/common.mk

# Add more lines here when more flows are supported.
default:
	make -f mk/verilator.mk
	make -f mk/yosys.mk
	make -f mk/svlint.mk
	make -f mk/icarus.mk
