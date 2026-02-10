// Write a program to check whether a number is power of 2 (without using loops).

module prog_check(input [31:0]d ,output logic q);
 
  always@(*) begin
  if(d>0)
    q=((d&(d-1))==0);
  else
    q=0;
  end
  
endmodule
