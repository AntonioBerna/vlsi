IVERILOG ?= iverilog
VVP ?= vvp
VERIBLE ?= verible-verilog-format
VERIBLE_SYNTAX ?= verible-verilog-syntax
VERIBLE_LINT ?= verible-verilog-lint
VERIBLE_LINT_FLAGS ?= --rules=-module-filename
STOP_NS ?= 30
SRC := 43.v 43_tb.v

.PHONY: all run format lint clean

all: run

run:
	$(IVERILOG) -g2012 -DSTOP_NS=$(STOP_NS) -s clock_signal_50_tb -o clock_signal_50_tb.out $(SRC)
	$(VVP) clock_signal_50_tb.out

format:
	@if ! command -v $(VERIBLE) >/dev/null 2>&1; then \
		echo "Error: $(VERIBLE) not found. Install verible."; \
		exit 1; \
	fi
	$(VERIBLE) --inplace $(SRC)
	$(VERIBLE_SYNTAX) $(SRC)
	$(VERIBLE_LINT) $(VERIBLE_LINT_FLAGS) $(SRC)

clean:
	rm -f *.out *.vcd