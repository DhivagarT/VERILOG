module monitor_demo;
 reg [4:0]a,b;
 reg [4:0]c;

 always #2 a=a+1;
always #2 b=b+1;

always@(*)begin

       c= a%b;
end

 initial begin
         a=$urandom_range(1,7);
         b=$urandom_range(1,7);
         $monitor("Time=%0t a=%0d b=%0d c=%0d",$time,a,b,c);
         #20;
         $finish;
 end
 endmodule

