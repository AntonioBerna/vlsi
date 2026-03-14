IVERILOG ?= iverilog
VVP ?= vvp
VERIBLE ?= verible-verilog-format
STOP_NS ?= 30
SRC := 43.v 43_tb.v

.PHONY: all run format clean

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

clean:
	rm -f *.out *.vcd