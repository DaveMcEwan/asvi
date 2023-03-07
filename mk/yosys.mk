
include mk/common.mk

default: lint

.PHONY: lint
lint: $(addprefix ${OUTDIR}/,$(addsuffix .yosys_lint.txt,${TESTCASE_NAMES}))

${OUTDIR}/%.yosys_lint.txt: testcases/%.sv
	mkdir -p ${OUTDIR}
	-yosys -q \-p 'read_verilog -sv $^' >> $@ 2>&1

