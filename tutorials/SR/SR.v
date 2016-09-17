module SR_Latch(
	input S,
	input R,
	output Q,
	output _Q
);

wire Q;
wire _Q;

nor nor_1(_Q,S,Q);

nor nor_2(Q,R,_Q);

endmodule
