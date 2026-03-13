// COMMON DATA BUS
// ======================================================
module cdb(

    input valid,
    input [31:0] result,

    output [31:0] broadcast

);

assign broadcast = valid ? result : 0;

endmodule
