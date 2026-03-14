// ASM Diagram (input = x)
//
//   x=1        x=1        x=1        x=1
// +----+ ----> +----+ ---> +----+ ---> +----+ ---> +----+
// | S0 |       | S1 |      | S2 |      | S3 |      | S4 |
// +----+ <---- +----+ <--- +----+ <--- +----+ <--- +----+
//   ^   x=0      |  x=0      |  x=0      |  x=0      |
//   |            +-----------+-----------+-----------+
//   |                         x=0
//   |
//   +--------------------------- ALARM=1, next -> S0 (when state=S4)
//
// Notes:
// - From S0: x=0 stays in S0.
// - From S1..S4: x=0 returns to S0.
// - In S4, alarm is asserted for one cycle, then FSM returns to S0.

#include <stdint.h>
#include <stdio.h>

int main(void) {
	uint8_t state = 0;
	uint8_t next_state = 0;
	uint8_t alarm = 0;

	uint8_t input_sequence[] = { 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0 };
	size_t cycles = sizeof(input_sequence) / sizeof(input_sequence[0]);

	for (size_t clk = 0; clk < cycles; ++clk) {
		uint8_t input = input_sequence[clk];

		state = next_state;
		alarm = 0;

		switch (state) {
		case 0:
			next_state = (input == 1) ? 1 : 0;
			break;

		case 1:
			next_state = (input == 1) ? 2 : 0;
			break;

		case 2:
			next_state = (input == 1) ? 3 : 0;
			break;

		case 3:
			next_state = (input == 1) ? 4 : 0;
			break;

		case 4:
			alarm = 1;
			next_state = 0;
			break;

		default:
			next_state = 0;
			break;
		}

		printf("CLK=%2zu, INPUT=%u, STATE=%u, ALARM=%u\n", clk, input, state, alarm);
	}

	return 0;
}
