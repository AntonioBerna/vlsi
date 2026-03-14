GHDL ?= ghdl
VSG ?= vsg
VSG_FLAGS ?= --fix
SRC := 54.vhdl 54_tb.vhdl

.PHONY: all analyze run format clean

all: run

analyze:
	$(GHDL) -a $(SRC)

run: analyze
	$(GHDL) -e alarm_asm_tb
	$(GHDL) -r alarm_asm_tb --vcd=alarm_asm.vcd --stop-time=200ns

format:
	@if ! command -v $(VSG) >/dev/null 2>&1; then \
		echo "Error: $(VSG) not found. Install vhdl-style-guide (vsg)."; \
		exit 1; \
	fi
	@$(VSG) $(VSG_FLAGS) $(SRC) || \
		echo "Warning: vsg reported remaining style violations that could not be auto-fixed."

clean:
	rm -f *.cf *.vcd
