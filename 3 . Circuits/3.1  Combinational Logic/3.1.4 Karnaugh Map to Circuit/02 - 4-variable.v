//Kmap2
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 

    assign out = (a&d&c) | ((~a)&b&c) | ((~c)&(~b)) | ((~a)&(~d)) ;
    
endmodule

