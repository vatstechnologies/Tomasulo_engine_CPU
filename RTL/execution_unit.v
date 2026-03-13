/EXECUTION UNIT
// ======================================================
module execution_unit(
    input clk,
    input valid,
    input [3:0] op,
    input [31:0] A,
    input [31:0] B,
    output reg [31:0] result,
    output reg done
);

always @(posedge clk)
begin
    if(valid)
    begin
        case(op)
            4'b0000: result <= A + B; // ADD
            4'b0001: result <= A - B; // SUB
            4'b0010: result <= A * B; // MUL
            4'b0011: result <= A & B; // AND
            4'b0100: result <= A | B; // OR
            default: result <= 0;
        endcase
        done <= 1;
    end
    else
        done <= 0;
end

endmodule

