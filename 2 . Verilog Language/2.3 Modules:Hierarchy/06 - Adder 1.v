//Module add
module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cin0,cout1,cout2;
    wire [15:0]sum1,sum2;
    assign cin0 = 1'b0;
    
    add16 add_1 (a[15:0],b[15:0],cin0,sum1,cout1);
    add16 add_2 (a[31:16],b[31:16],cout1,sum2,cout2);
    
    assign sum = {sum2,sum1};
    

endmodule

