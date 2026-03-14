module alarm_asm (
    input  wire clk,
    input  wire rst,
    input  wire input_bit,
    output reg  alarm
);
  localparam logic [2:0] S0 = 3'd0;
  localparam logic [2:0] S1 = 3'd1;
  localparam logic [2:0] S2 = 3'd2;
  localparam logic [2:0] S3 = 3'd3;
  localparam logic [2:0] S4 = 3'd4;

  reg [2:0] state;
  reg [2:0] next_state;

  always @(posedge clk) begin
    if (rst) begin
      state <= S0;
    end else begin
      state <= next_state;
    end
  end

  always_comb begin
    alarm = 1'b0;
    next_state = S0;

    case (state)
      S0: begin
        if (input_bit) begin
          next_state = S1;
        end else begin
          next_state = S0;
        end
      end

      S1: begin
        if (input_bit) begin
          next_state = S2;
        end else begin
          next_state = S0;
        end
      end

      S2: begin
        if (input_bit) begin
          next_state = S3;
        end else begin
          next_state = S0;
        end
      end

      S3: begin
        if (input_bit) begin
          next_state = S4;
        end else begin
          next_state = S0;
        end
      end

      S4: begin
        alarm = 1'b1;
        next_state = S0;
      end

      default: begin
        next_state = S0;
      end
    endcase
  end
endmodule
