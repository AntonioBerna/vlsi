IVERILOG ?= iverilog
VVP ?= vvp
VERIBLE ?= verible-verilog-format
VERIBLE_SYNTAX ?= verible-verilog-syntax
VERIBLE_LINT ?= verible-verilog-lint
VERIBLE_LINT_FLAGS ?= --rules=-module-filename
SRC := 38.v 38_tb.v

.PHONY: all run nor and or xor format lint clean

all: run

run: nor and or xor

nor:
	$(IVERILOG) -g2012 -s NOR_tb -o NOR_tb.out $(SRC)
	$(VVP) NOR_tb.out

and:
	$(IVERILOG) -g2012 -s AND_tb -o AND_tb.out $(SRC)
	$(VVP) AND_tb.out

or:
	$(IVERILOG) -g2012 -s OR_tb -o OR_tb.out $(SRC)
	$(VVP) OR_tb.out

xor:
	$(IVERILOG) -g2012 -s XOR_tb -o XOR_tb.out $(SRC)
	$(VVP) XOR_tb.out

format:
	$(VERIBLE) --inplace $(SRC)
	$(VERIBLE_SYNTAX) $(SRC)
	$(VERIBLE_LINT) $(VERIBLE_LINT_FLAGS) $(SRC)

clean:
	rm -f *.out *.vcd
