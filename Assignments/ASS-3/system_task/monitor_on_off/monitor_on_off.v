module moniotr_on_off;
reg [4:0]a,b;
reg [4:0]y;

initial begin
	a=0;
	b=1;
end

always begin
	#2 a=a+1;
	b=b+1;
end

initial begin
	a=$urandom_range(0,15);
	b=$urandom %16;
        $display("time=%0t monitor off",$time);
	$monitoroff();
	#5;
	$monitoron();
	y=a^b;
	$display("time=%0t monitor on ",$time);

        #20;
	$finish;
end
endmodule
