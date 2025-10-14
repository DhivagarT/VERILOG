module even_odd_parity_checker(input a,b,c,output reg[1:0]g,output reg[1:0]f);
/* g = parity generator
   f = parity checker
*/

always@(a or b or c)begin
g[0]= a^b^c;
g[1]=~(a^b^c);
f[0]=~((a^b^c)^g[0]);
f[1]= ((a^b^c)^g[1]);
end
endmodule

