module SRFF(S, R, clk, Q, Qbar);
input S, R, clk;
output Q, Qbar;
reg M, N;

always @(posedge clk)
begin
M = !(S & clk);
N = !(R & clk);
end

assign Q = !(M & Qbar);
assign Qbar = !(N & Q);
endmodule
