module tb_task_1;

reg [3:0] D0;
reg [3:0] D1;
reg [3:0] D2;
reg [3:0] D3;
wire [3:0] out;
reg [1:0] sel;
integer i;

task_1 mux0 (.D0(D0), .D1(D1), .D2(D2), .D3(D3), .sel(sel), .out(out));

initial begin

$monitor ("[%0t] sel = 0x%0h D0 = 0x%0h D1 = 0x%0h D2 = 0x%0h D3 = 0x%0h out = 0x%0h", $time, sel, D0, D1, D2, D3, out);


sel <= 0;
D0 <= $random; 
D1 <= $random; 
D2 <= $random; 
D3 <= $random; 

for (i = 1; i < 4; i = i+1) begin
    #10 sel <= i;
end

#10 $finish;

end
endmodule