//Mt2015 q4
module top_module (input x, input y, output z);

  wire [5:0]w;
    circuit_A A_IA1(x,y,w[0]);
    circuit_A A_IA2(x,y,w[1]);
    circuit_B B_IB1(x,y,w[2]);
    circuit_B B_IB2(x,y,w[3]);
    
    assign w[4] = w[0] | w[2];
    assign w[5] = w[1] & w[3];
    
    assign z = w[4] ^ w[5];
    
endmodule

module circuit_A (input A1 ,input A2 ,output A);

    assign A = (A1^A2) & A1;
    
endmodule

module circuit_B (input B1 ,input B2 ,output B);

    assign B = ~(B1 ^ B2);
    
endmodule

