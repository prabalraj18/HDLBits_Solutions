//Module shift
module top_module ( input clk, input d, output q );
    wire a,b;
    
    my_dff d1 (clk,d,a);
    my_dff d2 (clk,a,b);
    my_dff d3 (clk,b,q);

endmodule

