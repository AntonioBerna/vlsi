GHDL ?= ghdl
SRC := 38.vhdl 38_tb.vhdl

.PHONY: all analyze run nor and or xor clean

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

clean:
	rm -f *.cf *.vcd
