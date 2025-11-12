module toggle_signal(output reg q);

initial begin
    q = 0;
end

always begin
    #5 q = ~q;
end

initial begin
    $monitor(" Time=%0t q=%0b",$time, q);
    #30 $finish;
end

endmodule


