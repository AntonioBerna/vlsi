# Exercise 54

## Specification

First write in C and then in VHDL and Verilog the specification of a synchronous state machine with an INPUT input bit, which activates an ALARM signal for one clock cycle if the INPUT input remains at logical value "1" for four consecutive clock cycles.

## Usage

### State Machine in C

```bash
# Compile the C code
make

# Run state machine
./asm.out
# CLK= 0, RST=1, INPUT=0, STATE=0, NEXT=0, ALARM=0
# CLK= 1, RST=0, INPUT=1, STATE=0, NEXT=1, ALARM=0
# CLK= 2, RST=0, INPUT=1, STATE=1, NEXT=2, ALARM=0
# CLK= 3, RST=0, INPUT=1, STATE=2, NEXT=3, ALARM=0
# CLK= 4, RST=0, INPUT=1, STATE=3, NEXT=4, ALARM=0
# CLK= 5, RST=0, INPUT=0, STATE=4, NEXT=0, ALARM=1
# CLK= 6, RST=0, INPUT=1, STATE=0, NEXT=1, ALARM=0
# CLK= 7, RST=0, INPUT=1, STATE=1, NEXT=2, ALARM=0
# CLK= 8, RST=0, INPUT=1, STATE=2, NEXT=3, ALARM=0
# CLK= 9, RST=0, INPUT=1, STATE=3, NEXT=4, ALARM=0
# CLK=10, RST=0, INPUT=1, STATE=4, NEXT=0, ALARM=1
# CLK=11, RST=0, INPUT=0, STATE=0, NEXT=0, ALARM=0

# Clean up generated files
make clean
```

### State Machine in VHDL and Verilog

```bash
# Analyze, elaborate and run the design
make

# Visualize the waveforms
surfer alarm_asm.vcd

# Clean up generated files
make clean
```
