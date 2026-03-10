/*
 Write a Verilog module for a 4-bit comparator that outputs:

 A_gt_B

 A_lt_B

 A_eq_B
*/

module Qn_1(input [3:0]A,B,output reg gt,lt,eq);

always@(*)begin
	gt=0;
	lt=0;
	eq=0;
	//{gt,lt,eq}=3'b000;
	if(A>B)
		gt=1;
	else if(A<B)
		lt=1;
	else if(A==B)
		eq=1;
end

endmodule

/*

assign gt=((A[3]&~B[3])|
	(~(A[3]&B[3])&A[2]&~B[3])|
	(~(A[3]&B[3])&~(A[2]&B[2])&A[1]&~B[1])|
	(~(A[3&B[3])&(~(A[2]&B[2])&~(A[1]&B[1])&A[0]&~B[0]));

assign gt=((~A[3]&B[3])|
        (~(A[3]&B[3])&~A[2]&B[3])|
        (~(A[3]&B[3])&~(A[2]&B[2])&~A[1]&B[1])|
        (~(A[3&B[3])&(~(A[2]&B[2])&~(A[1]&B[1])&~A[0]&B[0]));


assign eq=(A[3]^B[3])&A[2]^B[2]&A[1]^B[1]&A[0]^B[0]);

*/

/*
module 4_bit_comparator#(parameter N=16) (input [N-1:0]A,B,output reg gt,lt,eq);

integer i;

alwaays@(*)begin
	gt=0;
	lt=0;
	eq=0;
			
for(i=N-1;i>=0;i=i-1)begin
	if(A[i]==B[i])
		eq=1;
	if(A[i]=~B[i])
		gt=1;
	else
		lt=1;
end
endmodule
    
*/





