module ALU (
input wire [11:0] A, // 12-bit input A
input wire [11:0] B, // 12-bit input B
input wire [2:0] SEL, // 3-bit mode control
input wire CLK, // Clock signal
input wire RST, // Active-low reset
output reg [11:0] F // 12-bit output F
);

// Internal registers for pipelining
reg [11:0] regA, regB; // Launch registers for inputs
reg [11:0] result; // Intermediate result

always @(posedge CLK) begin
if (!RST) begin
// Asynchronous reset
regA <= 12'b0;
regB <= 12'b0;
result <= 12'b0;
F <= 12'b0;
end
else
begin
// Load inputs into launch registers
regA <= A;
regB <= B;

// Compute result based on SEL
case (SEL)
3'b000: result <= regA + regB; // ADD
3'b001: result <= regA - regB; // SUBTRACT
3'b010: result <= regA * regB; // MULTIPLY
3'b011: result <= regA << 1'b1; // SHIFT LEFT 1-bit
3'b100: result <= regA >> 1'b1; // SHIFT RIGHT 1-bit
3'b101: result <= regA + 1'b1; // INCREMENT A
3'b110: result <= regA - 1'b1; // DECREMENT A
3'b111: result <= 12'h000; // Output constant
default: result <= 12'b0; // Default case
endcase

// Capture result into output register after 2 clock edges

F <= result;
end
end

endmodule
