/*  Simple I/O example for LabsLand's FPGA experiments
    Author: Sebastian Garcia
    Date: April 2021
*/

module simple_io (
    input [2:0] SW,  // Switches
    input [2:1] KEY,  // Push buttons
    output [9:0] LEDR  // LEDs
);

assign LEDR[0] = KEY[1];
assign LEDR[1] = KEY[2];
assign LEDR[9] = SW[0];
assign LEDR[8] = SW[1];
assign LEDR[7] = SW[2];

endmodule
