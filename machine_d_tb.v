`timescale 1ns / 1ps

module machine_d_tb;
    // Your code goes here.  DO NOT change anything that is already given! Otherwise, you will not be able to pass the tests!
    reg RESET, CLK, x; 
    wire [2:0] S;
    wire F;
    integer i;
    machine_d c1(RESET, CLK, x, S);
    
    initial begin
        $dumpfile("machine_d_result.vcd");
        $dumpvars;
        RESET = 1;
        x = 0;
        #21;
        RESET = 0; 
        #101;
        x = 1;
        #101;
        RESET=1;
        #20;
        $finish;
    end

    initial begin
        CLK = 0;
        forever begin
            #5;
            CLK = ~CLK;
        end
    end
endmodule
