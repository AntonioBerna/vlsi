GHDL ?= ghdl
SRC := 43.vhdl 43_tb.vhdl

.PHONY: all analyze run clean

all: run

analyze:
	$(GHDL) -a $(SRC)

run: analyze
	$(GHDL) -e clock_signal_50_tb
	$(GHDL) -r clock_signal_50_tb --vcd=clock_signal_50.vcd --stop-time=30ns

clean:
	rm -f *.cf *.vcd