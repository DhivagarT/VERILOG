`timescale 1ns/1ps

module time_realtime;
reg [3:0] a, b;
reg [3:0] c;

always @(*) c = a ~^ b;

initial begin
    a = $urandom % 7;
    b = $urandom % 7;
end

always begin
    #1.3;  
    a = a - 1;
    #2.1;
    b = b - 1;
end

initial begin
    $monitor("Time=%0t realtime=%0f a=%0d b=%0d c=%0d",
             $time, $realtime, a, b, c);
    #30;
    $finish;
end
endmodule


