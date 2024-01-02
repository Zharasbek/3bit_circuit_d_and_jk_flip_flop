module machine_d(
    input wire x,
    input wire CLK,
    input wire RESET,
    output wire F,
    output wire [2:0] S
);
    wire q0, q1, q2;
    wire t2;
    // Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!
    dff d0(.D((q2) | (~x & ~q2 & q1)), .CLK(CLK), .RESET(RESET), .Q(q2));
    dff d1(.D((~q1 & ~x) | (x & q1) | (q1 & q2)), .CLK(CLK), .RESET(RESET), .Q(q1));
    dff d2(.D((x & ~q0) | (~x & q0)), .CLK(CLK), .RESET(RESET), .Q(q0));
    and(t2, q2, q1);
    and(F, ~q0, t2);
    
    assign S = {q2, q1, q0};
endmodule
