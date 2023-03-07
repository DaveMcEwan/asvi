
include mk/common.mk

default: lint

.PHONY: lint
lint: $(addprefix ${OUTDIR}/,$(addsuffix .verilator_lint.txt,${TESTCASE_NAMES}))

${OUTDIR}/%.verilator_lint.txt: testcases/%.sv
	mkdir -p ${OUTDIR}
	verilator --version > $@
	-verilator --lint-only $^ >> $@ 2>&1
