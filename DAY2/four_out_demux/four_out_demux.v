module four_out_demux(o1,o2,o3,o4,a,s0,s1);

input a;
input s0,s1;
output o1,o2,o3,o4;

assign o1=~s0&~s1&a;
assign o2=~s0&s1&a;
assign o3=s0&~s1&a;
assign o4=s0&s1&a;
endmodule

/*GATE LEVEL MODELING

 not(s0_c,s0); 
 not(s1_c,s1);
 
 and(o1,s0_c,s1_c,a);
 and(o2,s0_c,s1,a);
 and(o3,s0,s1_c,a);
 and(o4,s0,s1,a);

 *BEHAVIORAL MODELING


module four_out_demux(o1,o2,o3,o4,a,s0,s1);

input a;
input s0,s1;
output o1,o2,o3,o4;

reg(a,s0,s1);

if({s0,s1}==2'b00)
	01=a;
if else({s0,s1}==2'b01)
        02=a;
if else({s0,s1}==2'b10)
        03=a;
if else({s0,s1}==2'b11)
        04=a;
end 
endmodule
 

  

