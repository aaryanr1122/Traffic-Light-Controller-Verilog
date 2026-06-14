module traffic_light_tb;
reg clk;
reg reset;
wire green;
wire red;
wire yellow;
traffic_light uut(.clk(clk),.reset(reset),.green(green),
.yellow(yellow),.red(red));
always #5 clk=~clk;
initial begin
    clk=0;
    reset=1;
    #10;
    reset=0;
    #150
    $finish;
end
initial begin
    $monitor("time=%0t green=%b yellow=%b red=%b",
    $time,green,yellow,red);
end
endmodule