module SRFF_tb;
reg S, R, clk;
wire Q, Qbar;

SRFF uut(S, R, clk, Q, Qbar);

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
S = 0; R = 0;
#10 S = 1; R = 0; // Set
#10 S = 0; R = 0;
#10 S = 0; R = 1; // Reset
#10 S = 0; R = 0;
#10 S = 1; R = 1; // Invalid condition
#10 S = 0; R = 0;
#20 $finish;
end
endmodule
