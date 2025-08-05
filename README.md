# Dice Game ("Craps").
### Key Functional Requirements:
The game simulates the rolling of two dice, where:

Each dice can have a value from 1 to 6.

This is achieved using two digital counters that loop in the sequence:
1 → 2 → 3 → 4 → 5 → 6 → 1 → ...

When the player "rolls" the dice:

The counters stop and display a value between 1 and 6 on each dice.

The sum of the two values gives a result between 2 and 12, like real dice.

### Game Logic Rules (as per Craps):
If the sum is 7 or 11 on the first roll → Player wins.

If the sum is 2, 3, or 12 on the first roll → Player loses.

For any other result (4, 5, 6, 8, 9, or 10), that value becomes the “point”:

The player continues rolling until:

They roll the same point again → Win

Or they roll a 7 → Lose.    

## Block Diagram (Control path + Data path) for Dice Game
<img width="622" height="252" alt="Screenshot (3455)" src="https://github.com/user-attachments/assets/cc971dfc-5575-4d0c-b779-ce2c96160841" />

The block diagram shows the working of a digital dice game. It uses two push buttons as input: Reset and Roll (Rb). The Reset button is used to start a new game. When the Roll button is pressed, the two dice counters begin to count quickly from 1 to 6, simulating the rolling of dice. Because the counting happens at high speed, the values cannot be seen clearly on the display. When the Roll button is released, the counters stop, and the final values of both dice are shown on the displays. These values are added, and the game logic checks whether the player has won, lost, or needs to roll again.

## Flowchart of Dice Game
<img width="408" height="456" alt="Screenshot (3451)" src="https://github.com/user-attachments/assets/f330fe20-1ac3-450a-80ed-2f9dde721ece" />
<img width="673" height="299" alt="Screenshot (3452)" src="https://github.com/user-attachments/assets/95cccf3c-91a0-47b3-a350-cb3bb0e8a264" />

The game begins by pressing a button to Roll dice. After rolling, the sum of the two dice is checked. If the sum = 7 or 11, the player directly wins. If the sum = 2, 3, or 12, the player loses. If the sum is anything else, it is stored in the point register, and the player rolls the dice again. In the next roll, if the sum = point, the player wins. If the sum = 7, the player loses. If the sum is not equal to the point or 7, the game continues, and the player rolls again. After reaching a Win or Lose state, the game waits for the player to press Reset to start a new game.

## Verilog Code.
`timescale 1ns / 1ps

module DiceGame (Rb, Reset, CLK, Sum, Roll, Win, Lose);

    input Rb, Reset, CLK;
    input [3:0] Sum;
    output reg Roll, Win, Lose;  // <-- FIXED: added reg

    reg [2:0] State, Nextstate;
    reg [3:0] Point;
    reg Sp;

    // State encoding for readability
    localparam IDLE  = 3'd0,
               ROLL1 = 3'd1,
               WIN   = 3'd2,
               LOSE  = 3'd3,
               WAIT  = 3'd4,
               ROLL2 = 3'd5;

    // Next State and Output Logic
    always @(*) begin
        // Default assignments
        Nextstate = State;
        Roll = 1'b0;
        Win = 1'b0;
        Lose = 1'b0;
        Sp = 1'b0;

        case (State)
            IDLE: begin
                if (Rb)
                    Nextstate = ROLL1;
            end

            ROLL1: begin
                Roll = 1'b1;
                if (Sum == 7 || Sum == 11)
                    Nextstate = WIN;
                else if (Sum == 2 || Sum == 3 || Sum == 12)
                    Nextstate = LOSE;
                else begin
                    Sp = 1'b1;
                    Nextstate = WAIT;
                end
            end

            WIN: begin
                Win = 1'b1;
                if (Reset)
                    Nextstate = IDLE;
            end

            LOSE: begin
                Lose = 1'b1;
                if (Reset)
                    Nextstate = IDLE;
            end

            WAIT: begin
                if (Rb)
                    Nextstate = ROLL2;
            end

            ROLL2: begin
                Roll = 1'b1;
                if (Sum == Point)
                    Nextstate = WIN;
                else if (Sum == 7)
                    Nextstate = LOSE;
                else
                    Nextstate = WAIT;
            end

            default: Nextstate = IDLE;
        endcase
    end

    // State and Point Update
    always @(posedge CLK or posedge Reset) begin
        if (Reset) begin
            State <= IDLE;
            Point <= 4'd0;
        end else begin
            State <= Nextstate;
            if (Sp)
                Point <= Sum;
        end
    end

endmodule


