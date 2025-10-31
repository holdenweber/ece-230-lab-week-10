//////////////////////////////////////////////////////////////////////////////////
// ECE 230L Team 24
// Dean Cunningham, Holden Weber 
// 
// Lab Date: 10/30/2025
// Sequential Circuits: Latches
//////////////////////////////////////////////////////////////////////////////////

module top(
    input [15:0]sw,
    // sw[0] = D-latch D
    // sw[15:8] = 8 data bits
    // sw[7:6] = Address Select
    input btnC,
    // BtnC = D-Latch E, Store
    output [15:0]led
    // led[0] = SR-Latch Q
    // led[1] = SR-Latch ~Q
    // led[15:8] = 8 output bits
    );

    d_latch part1(
        .D(sw[0]),
        .Q(led[0]),
        .NotQ(led[1]),
        .E(btnC)
    );
    
    memory_system part2(
        .data(sw[15:8]),
        .store(btnC),
        .addr(sw[7:6]),
        .memory(led[15:8])
    );
    
    
endmodule