/*  3-bit sum calculator with 7-segment display
    Author: Sebastian Garcia
    Date: October 2021
*/

module sum_calculator_tb();

reg [1:0] selector;
reg [2:0] numA, numB;
wire [6:0] display;

sum_calculator DUT(
    .num_selected(selector),
    .num_A(numA),
    .num_B(numB),
    .display(display)
);

initial begin
    selector = 0;
    numA = $urandom_range(3'b111);
    numB = $urandom_range(3'b111);
    #10;
    repeat (3) begin
        selector = selector + 1;
        numA = $urandom_range(3'b111);
        numB = $urandom_range(3'b111);
        #10;
    end
    $finish;
end

initial begin
    $display("| num_selected | num_A | num_B | display |");
    $monitor("|      %b      |    %d  |    %d  | %b |",selector, numA, numB, dispay);
end

endmodule
