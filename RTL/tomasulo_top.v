// TOP LEVEL TOMASULO ENGINE
// ======================================================
module tomasulo_top(

    input clk,
    input issue,
    input [3:0] opcode,
    input [31:0] srcA,
    input [31:0] srcB,

    output [31:0] result

);

wire rs_busy;
wire rs_ready;
wire [31:0] rsA;
wire [31:0] rsB;
wire [3:0] rsOp;

reservation_station RS(

    .clk(clk),
    .issue(issue),
    .op(opcode),
    .vj(srcA),
    .vk(srcB),

    .busy(rs_busy),
    .op_out(rsOp),
    .A(rsA),
    .B(rsB),
    .ready(rs_ready)

);

wire done;
wire [31:0] exec_result;

execution_unit EU(

    .clk(clk),
    .valid(rs_ready),
    .op(rsOp),
    .A(rsA),
    .B(rsB),
    .result(exec_result),
    .done(done)

);

cdb CDB(

    .valid(done),
    .result(exec_result),
    .broadcast(result)

);
