IVERILOG ?= iverilog
VVP ?= vvp
STOP_NS ?= 30
SRC := 43.v 43_tb.v

.PHONY: all run clean

all: run

run:
	$(IVERILOG) -g2012 -DSTOP_NS=$(STOP_NS) -s clock_signal_50_tb -o clock_signal_50_tb.out $(SRC)
	$(VVP) clock_signal_50_tb.out

clean:
	rm -f *.out *.vcd