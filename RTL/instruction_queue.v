// INSTRUCTION QUEUE
// ======================================================
module instruction_queue(

    input clk,
    input push,
    input pop,

    input [3:0] opcode_in,
    input [31:0] A_in,
    input [31:0] B_in,

    output reg [3:0] opcode_out,
    output reg [31:0] A_out,
    output reg [31:0] B_out

);

reg [3:0] opcode_mem [0:7];
reg [31:0] A_mem [0:7];
reg [31:0] B_mem [0:7];

integer head = 0;
integer tail = 0;

always @(posedge clk)
begin

    if(push)
    begin
        opcode_mem[tail] <= opcode_in;
        A_mem[tail] <= A_in;
        B_mem[tail] <= B_in;
        tail <= tail + 1;
    end

    if(pop)
    begin
        opcode_out <= opcode_mem[head];
        A_out <= A_mem[head];
        B_out <= B_mem[head];
        head <= head + 1;
    end

end

endmodule
