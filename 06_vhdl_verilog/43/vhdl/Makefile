GHDL ?= ghdl
VSG ?= vsg
VSG_FLAGS ?= --fix
SRC := 43.vhdl 43_tb.vhdl

.PHONY: all analyze run format clean

all: run

analyze:
	$(GHDL) -a $(SRC)

run: analyze
	$(GHDL) -e clock_signal_50_tb
	$(GHDL) -r clock_signal_50_tb --vcd=clock_signal_50.vcd --stop-time=30ns

format:
	@if ! command -v $(VSG) >/dev/null 2>&1; then \
		echo "Error: $(VSG) not found. Install vhdl-style-guide (vsg)."; \
		exit 1; \
	fi
	@$(VSG) $(VSG_FLAGS) $(SRC) || \
		echo "Warning: vsg reported remaining style violations that could not be auto-fixed."

clean:
	rm -f *.cf *.vcd