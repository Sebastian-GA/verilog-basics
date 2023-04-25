/*  Example of a logic table implementation in Verilog
    Author: Sebastian Garcia
    Date: September 2021
*/

module logic_table_tb();

reg [3:0] inputs;
wire [4:0] outputs;

logic_table DUT (
    .A(inputs[3]),
    .B(inputs[2]),
    .C(inputs[1]),
    .D(inputs[0]),

    .V(outputs[4]),
    .W(outputs[3]),
    .X(outputs[2]),
    .Y(outputs[1]),
    .Z(outputs[0])
);

// ---------- TestBench ----------  //
initial begin
    inputs = 0;
    #10;
    repeat (15) begin
        inputs = inputs + 1;
        #10;
    end
    $finish;
end

// ---------- Console ----------  //
initial begin
    $display("|------|-------|"); 
    $display("| ABCD | VWXYZ |");
    $display("|------|-------|");
    $monitor("| %b | %b |", inputs, outputs);
end

endmodule
