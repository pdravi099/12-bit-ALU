module ALU_tb;
reg [11:0] A, B;
reg [2:0] SEL;
reg CLK, RST;
wire [11:0] F;

// Instantiate the ALU module
ALU uut (
.A(A),
.B(B),
.SEL(SEL),

.CLK(CLK),
.RST(RST),
.F(F)
);

// Generate clock signal
always #5 CLK = ~CLK; // 10 time units clock period

initial begin
// Initialize inputs
CLK = 0;
RST = 0;
A = 12'd20; // Fixed value for A
B = 12'd10; // Fixed value for B
SEL = 3'b000;

// Apply reset
#10 RST = 1;

// Test different operations with fixed A and B
SEL = 3'b000; #20; // ADD
SEL = 3'b001; #20; // SUBTRACT
SEL = 3'b010; #20; // MULTIPLY
SEL = 3'b011; #20; // SHIFT LEFT
SEL = 3'b100; #20; // SHIFT RIGHT
SEL = 3'b101; #20; // INCREMENT A
SEL = 3'b110; #20; // DECREMENT A
SEL = 3'b111; #20; // Constant output

// End simulation
$stop;
end
endmodule
