
include mk/common.mk

default: lint

.PHONY: lint
lint: $(addprefix ${OUTDIR}/,$(addsuffix .icarus_lint.txt,${TESTCASE_NAMES}))

${OUTDIR}/%.icarus_lint.txt: testcases/%.sv
	mkdir -p ${OUTDIR}
	-iverilog -tnull -g2012 -Wall -i $^ >> $@ 2>&1
