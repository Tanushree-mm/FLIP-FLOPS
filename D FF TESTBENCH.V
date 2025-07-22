module DFF_tb;
reg D, Clk, Reset;
wire Q, Qbar;

DFF uut(Q, Qbar, D, Clk, Reset);

initial begin
Clk = 0;
forever #5 Clk = ~Clk;
end

initial begin

Reset = 1; D = 0;
#10 Reset = 0; D = 1;
#10 D = 0;
#10 D = 1;
#10 Reset = 1; // Apply reset again
#10 Reset = 0;
#20 $finish;
end
endmodule
