`include "SR.v"

module SR_test();

reg S;
reg R;
wire Q;
wire _Q;

SR_Latch sr(S,R,Q,_Q);

initial begin
	S=0; R=0; #5
	$display("%b %b | %b %b", S, R, Q, _Q);
	S=0; R=1; #5
	$display("%b %b | %b %b", S, R, Q, _Q);
	S=1; R=0; #5
	$display("%b %b | %b %b", S, R, Q, _Q);
	S=0; R=1; #5
	$display("%b %b | %b %b", S, R, Q, _Q);
end
endmodule
