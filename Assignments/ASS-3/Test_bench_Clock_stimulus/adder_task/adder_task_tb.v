module adder_task_tb;

reg [3:0]a,b;
reg cin;

wire [3:0]sum;
wire cout;

adder_task dut(a,b,cin,sum,cout);

task pattern;
	input[3:0]ta,tb;
	input tcin;
	begin
	a=ta;
	b=tb;
	cin=tcin;
	#4;
end
endtask

initial begin
    $monitor("Time=%0t | a=%b b=%b cin=%b | sum=%b cout=%b", $time, a, b, cin, sum, cout);

    $dumpfile("adder_task.vcd");
    $dumpvars(0, adder_task_tb);


    pattern(4'b0000, 4'b0000, 1'b0);
    pattern(4'b0001, 4'b0010, 1'b0);
    pattern(4'b0101, 4'b0011, 1'b1);
    pattern(4'b1111, 4'b0001, 1'b0);
    pattern(4'b1010, 4'b0101, 1'b1);

    #10;
    $finish;
end

endmodule
