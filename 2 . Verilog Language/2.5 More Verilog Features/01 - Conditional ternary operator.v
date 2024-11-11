//Conditional
module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);
    
    wire [7:0]min1,min2,min3,min4,min5;
    
    assign min1 = (a < b) ? a : b ;
    assign min2 = (b < c) ? b : c ;
    assign min3 = (c < d) ? c : d ;
    assign min4 = (min1 < min2) ? min1 : min2 ; 
    assign min5 = (min2 < min3) ? min2 : min3 ;
    assign min  = (min4 < min5) ? min4 : min5 ; 

endmodule

