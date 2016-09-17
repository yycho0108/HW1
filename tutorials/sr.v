module SR_Latch();

reg S;
reg R;
wire Q;
wire _Q;

nor BOT_NOR (_Q,S,Q);
nor TOP_NOR (Q,R,_Q);

initial

begin
	S=0; R=0; #5
	$display("%b %b | %b %b", S, R, Q, _Q);
	S=1; R=0; #5
	$display("%b %b | %b %b", S, R, Q, _Q);
	S=0; R=1; #5
	$display("%b %b | %b %b", S, R, Q, _Q);
end

endmodule
