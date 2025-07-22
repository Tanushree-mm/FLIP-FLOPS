`timescale 1ns/1ns
module jkff_tb;
reg J, K, clk;
wire Q, Qm;

jkff uut (.J(J),.K(K), .clk(clk),.Q(Q), .Qm(Qm));
initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
J = 0; K = 0;
#10;
J = 1; K = 0;
#10;
J = 0; K = 1;
#10;
J = 1; K = 1;
#10;
J = 0; K = 0;
#10;

$finish;
end
initial begin
$display("Time J K | Qm");

$monitor("%0t %b %b | %b", $time, J, K, Qm);
end
endmodule
