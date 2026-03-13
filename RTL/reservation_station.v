// RESERVATION STATION
// ======================================================
module reservation_station(

    input clk,
    input issue,
    input [3:0] op,
    input [31:0] vj,
    input [31:0] vk,

    output reg busy,
    output reg [3:0] op_out,
    output reg [31:0] A,
    output reg [31:0] B,
    output reg ready

);

always @(posedge clk)
begin

    if(issue && !busy)
    begin
        busy <= 1;
        op_out <= op;
        A <= vj;
        B <= vk;
        ready <= 1;
    end
    else
        ready <= 0;

end

endmodule
