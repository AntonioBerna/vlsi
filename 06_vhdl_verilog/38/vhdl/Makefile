GHDL ?= ghdl
VSG ?= vsg
VSG_FLAGS ?= --fix
SRC := 38.vhdl 38_tb.vhdl

.PHONY: all analyze run nor and or xor format clean

all: run

run: nor and or xor

analyze:
	$(GHDL) -a $(SRC)

nor: analyze
	$(GHDL) -e nor_tb
	$(GHDL) -r nor_tb --vcd=nor.vcd

and: analyze
	$(GHDL) -e and_tb
	$(GHDL) -r and_tb --vcd=and.vcd

or: analyze
	$(GHDL) -e or_tb
	$(GHDL) -r or_tb --vcd=or.vcd

xor: analyze
	$(GHDL) -e xor_tb
	$(GHDL) -r xor_tb --vcd=xor.vcd

format:
	@if ! command -v $(VSG) >/dev/null 2>&1; then \
		echo "Error: $(VSG) not found. Install vhdl-style-guide (vsg)."; \
		exit 1; \
	fi
	@$(VSG) $(VSG_FLAGS) $(SRC) || \
		echo "Warning: vsg reported remaining style violations that could not be auto-fixed."

clean:
	rm -f *.cf *.vcd
