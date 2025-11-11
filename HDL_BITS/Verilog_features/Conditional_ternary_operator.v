module top_module (
    input [7:0] a, b, c, d,
    output reg [7:0] min);//
    reg [7:0]x,y;
    
    always@(*)begin
        x=(a < b) ? a:b;
        y=(c < d) ? c:d;
        min=(x < y) ? x:y;
    end

    

endmodule
