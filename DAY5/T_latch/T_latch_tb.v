module T_latch_tb;
    reg t;
    reg enb;
    wire q;
    integer i;

   
    T_latch dut (.t(t), .enb(enb), .q(q));


    always #2 enb = ~enb;

    initial begin
       
        t = 0;
        enb = 0;

        
        $monitor("t=%b enb=%b q=%b", t, enb, q);
        $dumpfile("T_latch_wave.vcd");
        $dumpvars(0, T_latch_tb);


        for(i=0; i<5; i=i+1)begin
		t=i;
        #10; 
end
$finish;
end
endmodule

