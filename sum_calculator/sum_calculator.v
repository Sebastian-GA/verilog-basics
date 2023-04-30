/*  3-bit sum calculator with 7-segment display
    Author: Sebastian Garcia
    Date: October 2021
*/

module sum_calculator
(
    input [2:0] num_A, num_B,
    input [1:0] num_selected,
    output [6:0] display
);

wire [3:0] sum;
reg [3:0] num2display;

assign sum = num_A + num_B;

// Select which number to display
always @(*)
    case (num_selected)
        2'b10:   num2display = num_A;
        2'b01:   num2display = num_B;
        default: num2display = sum;
    endcase

// Convert binary number to 7-segment display
module_bin_2_7seg DISPLAY(
    .num(num2display),
    .display(display)
);

endmodule 
