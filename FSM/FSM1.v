`timescale 1ns / 1ps

module BasicFsm (
  input wire Clock,
  input wire Reset,
  input wire A,
  input wire B,
  output wire Output1,
  output wire Output2,
  output reg [2:0] Status
);

  localparam STATE_Initial = 3'd0,
    STATE_1 = 3'd1,
    STATE_2 = 3'd2,
    STATE_3 = 3'd3,
    STATE_4 = 3'd4;

  reg [2:0] CurrentState;
  reg [2:0] NextState;

  always @(posedge Clock) begin
    if (Reset) begin
      CurrentState <= STATE_Initial;
    end else begin
      CurrentState <= NextState;
    end
  end

  always @(*) begin
    NextState = CurrentState;
    case (CurrentState)
      STATE_Initial: begin
        NextState = STATE_1;
      end
      STATE_1: begin
        if (A & B) begin
          NextState = STATE_2;
        end
      end
      STATE_2: begin
        if (A) begin
          NextState = STATE_3;
        end
      end
      STATE_3: begin
        if (!A & B) begin
          NextState = STATE_Initial;
        end else if (A & !B) begin
          NextState = STATE_4;
        end
      end
      STATE_4: begin
        // Do nothing
      end
      default: begin
        NextState = STATE_Initial;
      end
    endcase
  end

  assign Output1 = (CurrentState == STATE_1) | (CurrentState == STATE_2);
  assign Output2 = (CurrentState == STATE_2);

  always @(*) begin
    Status = 3'b000;
    case (CurrentState)
      STATE_2: begin
        Status = 3'b010;
      end
      STATE_3: begin
        Status = 3'b011;
      end
      default: begin
        // Do nothing
      end
    endcase
  end

endmodule
