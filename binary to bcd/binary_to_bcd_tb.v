`timescale 1ns/1ps

module binary_to_bcd_tb;

reg [7:0] binary_in;

wire [3:0] hundreds;
wire [3:0] tens;
wire [3:0] ones;

binary_to_bcd uut (
    .binary_in(binary_in),
    .hundreds(hundreds),
    .tens(tens),
    .ones(ones)
);

initial begin

    $display("------------------------------------------------");
    $display("          BINARY TO BCD CONVERTER");
    $display("------------------------------------------------");
    $display("Binary       Decimal       BCD");
    $display("------------------------------------------------");

    // Test 1: 25
    binary_in = 8'd25;
    #10;
    $display("%b       %d          %b %b %b",
             binary_in, binary_in, hundreds, tens, ones);

    // Test 2: 50
    binary_in = 8'd50;
    #10;
    $display("%b       %d          %b %b %b",
             binary_in, binary_in, hundreds, tens, ones);

    // Test 3: 99
    binary_in = 8'd99;
    #10;
    $display("%b       %d          %b %b %b",
             binary_in, binary_in, hundreds, tens, ones);

    // Test 4: 128
    binary_in = 8'd128;
    #10;
    $display("%b       %d         %b %b %b",
             binary_in, binary_in, hundreds, tens, ones);

    // Test 5: 255
    binary_in = 8'd255;
    #10;
    $display("%b       %d         %b %b %b",
             binary_in, binary_in, hundreds, tens, ones);

    $display("------------------------------------------------");
    $display("Simulation Completed Successfully.");
    $display("------------------------------------------------");

    $finish;

end

endmodule