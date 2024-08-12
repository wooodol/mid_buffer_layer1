`timescale 1ns / 1ps

module tb();
reg rst_n;
reg clk;
reg valid_in;
wire [31:0] channel1 [0:33][0:25];
wire [31:0] channel2 [0:33][0:25];
wire [31:0] channel3 [0:33][0:25];
wire [31:0] channel4 [0:33][0:25];
wire [31:0] channel5 [0:33][0:25];
wire [31:0] channel6 [0:33][0:25];
wire [31:0] channel7 [0:33][0:25];
wire [31:0] channel8 [0:33][0:25];
wire [31:0] channel9 [0:33][0:25];
wire [31:0] channel10 [0:33][0:25];
wire [31:0] channel11 [0:33][0:25];
wire [31:0] channel12 [0:33][0:25];
wire [31:0] channel13 [0:33][0:25];
wire [31:0] channel14 [0:33][0:25];
wire [31:0] channel15 [0:33][0:25];
wire [31:0] channel16 [0:33][0:25];
wire [31:0] channel17 [0:33][0:25];
wire [31:0] channel18 [0:33][0:25];
wire [31:0] channel19 [0:33][0:25];
wire [31:0] channel20 [0:33][0:25];
wire [31:0] channel21 [0:33][0:25];
wire [31:0] channel22 [0:33][0:25];
wire [31:0] channel23 [0:33][0:25];
wire [31:0] channel24 [0:33][0:25];
wire [31:0] channel25 [0:33][0:25];
wire [31:0] channel26 [0:33][0:25];
wire [31:0] channel27 [0:33][0:25];
wire [31:0] channel28 [0:33][0:25];
wire [31:0] channel29 [0:33][0:25];
wire [31:0] channel30 [0:33][0:25];
wire [31:0] channel31 [0:33][0:25];
wire [31:0] channel32 [0:33][0:25];

wire [31:0] data_out_1 [0:1][0:1];
wire [31:0] data_out_2 [0:1][0:1];
wire [31:0] data_out_3 [0:1][0:1];
wire [31:0] data_out_4 [0:1][0:1];
wire [31:0] data_out_5 [0:1][0:1];
wire [31:0] data_out_6 [0:1][0:1];
wire [31:0] data_out_7 [0:1][0:1];
wire [31:0] data_out_8 [0:1][0:1];
wire [31:0] data_out_9 [0:1][0:1];
wire [31:0] data_out_10 [0:1][0:1];
wire [31:0] data_out_11 [0:1][0:1];
wire [31:0] data_out_12 [0:1][0:1];
wire [31:0] data_out_13 [0:1][0:1];
wire [31:0] data_out_14 [0:1][0:1];
wire [31:0] data_out_15 [0:1][0:1];
wire [31:0] data_out_16 [0:1][0:1];
wire [31:0] data_out_17 [0:1][0:1];
wire [31:0] data_out_18 [0:1][0:1];
wire [31:0] data_out_19 [0:1][0:1];
wire [31:0] data_out_20 [0:1][0:1];
wire [31:0] data_out_21 [0:1][0:1];
wire [31:0] data_out_22 [0:1][0:1];
wire [31:0] data_out_23 [0:1][0:1];
wire [31:0] data_out_24 [0:1][0:1];
wire [31:0] data_out_25 [0:1][0:1];
wire [31:0] data_out_26 [0:1][0:1];
wire [31:0] data_out_27 [0:1][0:1];
wire [31:0] data_out_28 [0:1][0:1];
wire [31:0] data_out_29 [0:1][0:1];
wire [31:0] data_out_30 [0:1][0:1];
wire [31:0] data_out_31 [0:1][0:1];
wire [31:0] data_out_32 [0:1][0:1];

reg [31:0] data_in [0:31];

wire y;
reg [10:0] m;
integer i;
wire state;

channel_buffer uut(
    .valid_in(valid_in),
    .rst_n(rst_n),
    .data_in(data_in),
    .clk(clk),
    .channel1(channel1),
.channel2(channel2),
.channel3(channel3),
.channel4(channel4),
.channel5(channel5),
.channel6(channel6),
.channel7(channel7),
.channel8(channel8),
.channel9(channel9),
.channel10(channel10),
.channel11(channel11),
.channel12(channel12),
.channel13(channel13),
.channel14(channel14),
.channel15(channel15),
.channel16(channel16),
.channel17(channel17),
.channel18(channel18),
.channel19(channel19),
.channel20(channel20),
.channel21(channel21),
.channel22(channel22),
.channel23(channel23),
.channel24(channel24),
.channel25(channel25),
.channel26(channel26),
.channel27(channel27),
.channel28(channel28),
.channel29(channel29),
.channel30(channel30),
.channel31(channel31),
.channel32(channel32),
.data_out_1(data_out_1),
.data_out_2(data_out_2),
.data_out_3(data_out_3),
.data_out_4(data_out_4),
.data_out_5(data_out_5),
.data_out_6(data_out_6),
.data_out_7(data_out_7),
.data_out_8(data_out_8),
.data_out_9(data_out_9),
.data_out_10(data_out_10),
.data_out_11(data_out_11),
.data_out_12(data_out_12),
.data_out_13(data_out_13),
.data_out_14(data_out_14),
.data_out_15(data_out_15),
.data_out_16(data_out_16),
.data_out_17(data_out_17),
.data_out_18(data_out_18),
.data_out_19(data_out_19),
.data_out_20(data_out_20),
.data_out_21(data_out_21),
.data_out_22(data_out_22),
.data_out_23(data_out_23),
.data_out_24(data_out_24),
.data_out_25(data_out_25),
.data_out_26(data_out_26),
.data_out_27(data_out_27),
.data_out_28(data_out_28),
.data_out_29(data_out_29),
.data_out_30(data_out_30),
.data_out_31(data_out_31),
.data_out_32(data_out_32),

.m(m),
.y(y),
.state(state)
);
integer j,o;
    
initial begin
    o = 0;
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    valid_in = 0;
    rst_n = 0;
    #25
    rst_n = 1;
    #10
    valid_in = 1;

end



always @(posedge clk) begin
    if(valid_in == 1) begin
        for(i = 0; i<32; i = i + 1) begin
            data_in[i] = $urandom; 
        end
        o <= o + 1;
        if(o == 884)begin
            valid_in <= 0;
            o <= 0;
        end                 
    end
end


initial begin
   
   

        $display("Displaying all values in data_out_1:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_1[%0d][%0d] = %h", i, j, data_out_1[i][j]);
    end
end

$display("Displaying all values in data_out_2:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_2[%0d][%0d] = %h", i, j, data_out_2[i][j]);
    end
end

$display("Displaying all values in data_out_3:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_3[%0d][%0d] = %h", i, j, data_out_3[i][j]);
    end
end

$display("Displaying all values in data_out_4:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_4[%0d][%0d] = %h", i, j, data_out_4[i][j]);
    end
end

$display("Displaying all values in data_out_5:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_5[%0d][%0d] = %h", i, j, data_out_5[i][j]);
    end
end

$display("Displaying all values in data_out_6:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_6[%0d][%0d] = %h", i, j, data_out_6[i][j]);
    end
end

$display("Displaying all values in data_out_7:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_7[%0d][%0d] = %h", i, j, data_out_7[i][j]);
    end
end

$display("Displaying all values in data_out_8:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_8[%0d][%0d] = %h", i, j, data_out_8[i][j]);
    end
end

$display("Displaying all values in data_out_9:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_9[%0d][%0d] = %h", i, j, data_out_9[i][j]);
    end
end

$display("Displaying all values in data_out_10:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_10[%0d][%0d] = %h", i, j, data_out_10[i][j]);
    end
end

$display("Displaying all values in data_out_11:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_11[%0d][%0d] = %h", i, j, data_out_11[i][j]);
    end
end

$display("Displaying all values in data_out_12:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_12[%0d][%0d] = %h", i, j, data_out_12[i][j]);
    end
end

$display("Displaying all values in data_out_13:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_13[%0d][%0d] = %h", i, j, data_out_13[i][j]);
    end
end

$display("Displaying all values in data_out_14:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_14[%0d][%0d] = %h", i, j, data_out_14[i][j]);
    end
end

$display("Displaying all values in data_out_15:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_15[%0d][%0d] = %h", i, j, data_out_15[i][j]);
    end
end

$display("Displaying all values in data_out_16:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_16[%0d][%0d] = %h", i, j, data_out_16[i][j]);
    end
end

$display("Displaying all values in data_out_17:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_17[%0d][%0d] = %h", i, j, data_out_17[i][j]);
    end
end

$display("Displaying all values in data_out_18:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_18[%0d][%0d] = %h", i, j, data_out_18[i][j]);
    end
end

$display("Displaying all values in data_out_19:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_19[%0d][%0d] = %h", i, j, data_out_19[i][j]);
    end
end

$display("Displaying all values in data_out_20:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_20[%0d][%0d] = %h", i, j, data_out_20[i][j]);
    end
end

$display("Displaying all values in data_out_21:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_21[%0d][%0d] = %h", i, j, data_out_21[i][j]);
    end
end

$display("Displaying all values in data_out_22:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_22[%0d][%0d] = %h", i, j, data_out_22[i][j]);
    end
end

$display("Displaying all values in data_out_23:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_23[%0d][%0d] = %h", i, j, data_out_23[i][j]);
    end
end

$display("Displaying all values in data_out_24:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_24[%0d][%0d] = %h", i, j, data_out_24[i][j]);
    end
end

$display("Displaying all values in data_out_25:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_25[%0d][%0d] = %h", i, j, data_out_25[i][j]);
    end
end

$display("Displaying all values in data_out_26:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_26[%0d][%0d] = %h", i, j, data_out_26[i][j]);
    end
end

$display("Displaying all values in data_out_27:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_27[%0d][%0d] = %h", i, j, data_out_27[i][j]);
    end
end

$display("Displaying all values in data_out_28:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_28[%0d][%0d] = %h", i, j, data_out_28[i][j]);
    end
end

$display("Displaying all values in data_out_29:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_29[%0d][%0d] = %h", i, j, data_out_29[i][j]);
    end
end

$display("Displaying all values in data_out_30:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_30[%0d][%0d] = %h", i, j, data_out_30[i][j]);
    end
end

$display("Displaying all values in data_out_31:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_31[%0d][%0d] = %h", i, j, data_out_31[i][j]);
    end
end

$display("Displaying all values in data_out_32:");
for (i = 0; i < 2; i = i + 1) begin
    for (j = 0; j < 2; j = j + 1) begin
        $display("data_out_32[%0d][%0d] = %h", i, j, data_out_32[i][j]);
    end
end
end



initial begin
    $monitor("m:%h|j:%h|state:%b",m,j,state);
end


endmodule
