module demorgan
(
	input A,
	input B,
	output nA,
	output nB,
	output n_AB,
	output nAonB,
	output n_AoB,
	output nAnB
);

wire nA;
wire nB;

not Ainv(nA, A);
not Binv(nB, B);

nand na(n_AB, A, B);
or non(nAonB, nA, nB);
nor no(n_AoB, A, B);
and nn(nAnB,nA, nB);

endmodule
