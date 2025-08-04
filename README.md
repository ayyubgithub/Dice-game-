# Problem Specification of Dice Game Project ("Craps")
The goal of this project is to design a simple digital version of the popular dice game called “Craps”, using State Machine (SM) chart techniques.
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

Or they roll a 7 → Lose

