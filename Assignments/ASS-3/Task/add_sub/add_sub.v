module add_sub_task;
    reg [7:0] A, B;
    reg [7:0] sum, diff;
    integer i;

    task add_sub;
        input [7:0] a, b;
        output [7:0] s, d;
        begin
            s = a + b;
            d = a - b;
        end
    endtask

    initial begin
        $monitor("Time=%0t A=%0d B=%0d Sum=%0d Diff=%0d",$time,A,B,sum,diff);
        for(i=0; i<5; i=i+1) begin
            A = $urandom % 100;
            B = $urandom % 100;
            add_sub(A,B,sum,diff);
            #5;
        end
        $finish;
    end
endmodule

