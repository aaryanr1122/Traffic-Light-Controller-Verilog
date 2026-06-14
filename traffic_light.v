module traffic_light(
    input clk,
    input reset,
    output reg green,
    output reg yellow,
    output reg red
);

parameter GREEN  = 2'b00;
parameter YELLOW = 2'b01;
parameter RED    = 2'b10;

reg [1:0] state;
reg [2:0] count;

// State transition logic
always @(posedge clk or posedge reset) begin
    if(reset) begin
        state <= GREEN;
        count <= 0;
    end
    else begin
        count <= count + 1;

        case(state)

            GREEN:
                if(count == 4) begin
                    state <= YELLOW;
                    count <= 0;
                end

            YELLOW:
                if(count == 1) begin
                    state <= RED;
                    count <= 0;
                end

            RED:
                if(count == 4) begin
                    state <= GREEN;
                    count <= 0;
                end

        endcase
    end
end

// Output logic
always @(*) begin
    green = 0;
    yellow = 0;
    red = 0;

    case(state)
        GREEN:  green = 1;
        YELLOW: yellow = 1;
        RED:    red = 1;
    endcase
end

endmodule