// ASM Diagram based on Moore Machine (input = x)
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
// - In S4, alarm is asserted for one cycle, then ASM returns to S0.

#include <stdint.h>
#include <stdio.h>

typedef enum {
  S0 = 0,
  S1,
  S2,
  S3,
  S4,
} state_t;

int main(void) {
  state_t state = S0;
  state_t next_state = S0;
  uint8_t alarm = 0;

  uint8_t rst_sequence[] = {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
  uint8_t input_sequence[] = {0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0};
  size_t cycles = sizeof(input_sequence) / sizeof(input_sequence[0]);

  for (size_t clk = 0; clk < cycles; ++clk) {
    uint8_t input = input_sequence[clk];
    uint8_t rst = rst_sequence[clk];

    alarm = 0;
    next_state = S0;

    switch (state) {
    case S0:
      next_state = (input == 1U) ? S1 : S0;
      break;

    case S1:
      next_state = (input == 1U) ? S2 : S0;
      break;

    case S2:
      next_state = (input == 1U) ? S3 : S0;
      break;

    case S3:
      next_state = (input == 1U) ? S4 : S0;
      break;

    case S4:
      alarm = 1;
      next_state = S0;
      break;

    default:
      next_state = S0;
      break;
    }

    printf("CLK=%2zu, RST=%u, INPUT=%u, STATE=%u, NEXT=%u, ALARM=%u\n", clk, rst, input, state, next_state, alarm);

    if (rst == 1U) {
      state = S0;
    } else {
      state = next_state;
    }
  }

  return 0;
}
