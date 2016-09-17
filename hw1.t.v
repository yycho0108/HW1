`include "hw1.v"

module demorgan_test ();

reg A,B;

wire nA, nB, n_AB, nAonB, n_AoB, nAnB;

demorgan dut(A,B,nA,nB,n_AB, nAonB, n_AoB, nAnB);

initial begin
	$display("A | B | ~A | ~B | ~(AB) | ~A+~B | ~(A+B) | ~A~B ");
	A=0;B=0; #5
	$display("%b | %b |  %b |  %b |  %b    |   %b   |    %b   |  %b ", A, B, nA, nB, n_AB, nAonB, n_AoB, nAnB);
	A=0;B=1; #5
	$display("%b | %b |  %b |  %b |  %b    |   %b   |    %b   |  %b ", A, B, nA, nB, n_AB, nAonB, n_AoB, nAnB);
	A=1;B=0; #5
	$display("%b | %b |  %b |  %b |  %b    |   %b   |    %b   |  %b ", A, B, nA, nB, n_AB, nAonB, n_AoB, nAnB);
	A=1;B=1; #5
	$display("%b | %b |  %b |  %b |  %b    |   %b   |    %b   |  %b ", A, B, nA, nB, n_AB, nAonB, n_AoB, nAnB);
end
endmodule
