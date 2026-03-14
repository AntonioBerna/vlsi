IVERILOG ?= iverilog
VVP ?= vvp
VERIBLE ?= verible-verilog-format
VERIBLE_SYNTAX ?= verible-verilog-syntax
VERIBLE_LINT ?= verible-verilog-lint
VERIBLE_LINT_FLAGS ?= --rules=-module-filename
STOP_NS ?= 200
SRC := 54.v 54_tb.v

.PHONY: all run format lint clean

all: run

run:
	$(IVERILOG) -g2012 -DSTOP_NS=$(STOP_NS) -s alarm_asm_tb -o alarm_asm_tb.out $(SRC)
	$(VVP) alarm_asm_tb.out

format:
	@if ! command -v $(VERIBLE) >/dev/null 2>&1; then \
		echo "Error: $(VERIBLE) not found. Install verible."; \
		exit 1; \
	fi
	@if ! command -v $(VERIBLE_SYNTAX) >/dev/null 2>&1; then \
		echo "Error: $(VERIBLE_SYNTAX) not found. Install verible."; \
		exit 1; \
	fi
	@if ! command -v $(VERIBLE_LINT) >/dev/null 2>&1; then \
		echo "Error: $(VERIBLE_LINT) not found. Install verible."; \
		exit 1; \
	fi
	$(VERIBLE) --inplace $(SRC)
	$(VERIBLE_SYNTAX) $(SRC)
	$(VERIBLE_LINT) $(VERIBLE_LINT_FLAGS) $(SRC)

lint:
	@if ! command -v $(VERIBLE_LINT) >/dev/null 2>&1; then \
		echo "Error: $(VERIBLE_LINT) not found. Install verible."; \
		exit 1; \
	fi
	$(VERIBLE_LINT) $(VERIBLE_LINT_FLAGS) $(SRC)

clean:
	rm -f *.out *.vcd
