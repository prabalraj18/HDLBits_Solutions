//Exams/m2014 q4g
module top_module (
    input in1,
    input in2,
    input in3,
    output out);

    wire out0 ;
    assign out0 = ~(in1 ^ in2);
    assign out  = (out0 ^ in3);
    
endmodule

