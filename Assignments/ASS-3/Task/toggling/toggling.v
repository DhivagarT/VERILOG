module toggling_for_10;
reg a,c;

initial a=1;

task toggle;begin
	#10 c=~a;
end
endtask

initial begin
	$monitor("Time=%0t a=%0d c=%0d",$time,a,c);
	#11 a=$urandom %2;
	toggle;
	#5;

        $finish;
end
endmodule

