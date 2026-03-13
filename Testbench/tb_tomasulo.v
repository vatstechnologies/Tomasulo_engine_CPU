//timescale 1ns/1ps

module tb_tomasulo;

reg clk;
reg issue;

reg [3:0] opcode;
reg [31:0] A;
reg [31:0] B;

wire [31:0] result;

tomasulo_top DUT(

    .clk(clk),
    .issue(issue),
    .opcode(opcode),
    .srcA(A),
    .srcB(B),
    .result(result)

);

always #5 clk = ~clk;

initial
begin

  $dumpfile("tomasulo.vcd");
  $dumpvars(0,tb_tomasulo);

clk = 0;
issue = 0;

#10

// ADD
opcode = 4'b0000;
A = 10;
B = 20;
issue = 1;

#10 issue = 0;

#20

// MUL
opcode = 4'b0010;
A = 3;
B = 7;
issue = 1;

#10 issue = 0;

#50

$finish;

end

initial
begin
  
$monitor("time=%0t opcode=%b A=%d B=%d result=%d",
$time,opcode,A,B,result);
end
