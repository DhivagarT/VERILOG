module tb_dff_blocking;
    reg clk, d;
    wire q;

    dff_blocking uut(.clk(clk), .d(d), .q(q));

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        d = 0;
        #7 d = 1;  
        #10 d = 0;
        #10 d = 1;
        #10 $finish;
    end

    initial begin
        $monitor("Time=%0t clk=%0d d=%0d q=%0d",$time,clk,d,q);
	$dumpfile("tb_dff_blocking.vcd");
	$dumpvars(0,tb_dff_blocking);
    end
endmodule

