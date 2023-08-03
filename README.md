## Dice_Game

## Abstract:

The "Dice_Game_Simulation" repository contains a Verilog implementation of a simple state machine representing a dice rolling game. This project serves as a basic example of how to design and simulate a state machine in digital logic. The module defines various states and their transitions to represent the possible outcomes of rolling a six-sided dice.

## Introduction:

In digital design, state machines are widely used to model systems that exhibit distinct states and undergo transitions based on input stimuli. The "Dice_Game_Simulation" repository demonstrates the implementation of a dice rolling game using a state machine designed in Verilog. The repository includes all necessary files and documentation to understand, simulate, and test the dice game module.

## Inputs:

The "dice_game" module accepts the following input signals:

clk: This is the clock input, used for synchronous operations to control the timing of state updates and transitions.

reset_n: An asynchronous active-low reset signal. When asserted low, it initializes the state machine to a predefined starting state, ensuring a predictable state when the system powers on or undergoes a reset.

ena: The enable signal controls the state transitions. When asserted, the module proceeds with state transitions based on the combinational logic defined within the module. Conversely, deasserting ena maintains the current state, effectively freezing the state machine.

## Outputs:

The "dice_game" module provides a single output signal:

dice[2:0]: This 3-bit vector represents the current state of the dice in the game. The value of dice corresponds to one of the eight predefined states, indicating the outcome of the dice roll. Each state represents a particular face of the dice (1 to 6) and two additional states to represent the beginning (s1) and an unused state (s0).

## Source Code and Sim:

src/: This directory contains the Verilog source code for the "dice_game" module.

dice_game.v: Verilog implementation of the "dice_game" module, including the state logic and state transition rules.
Testbench:

testbench/: This directory contains the testbench and test cases for the "dice_game" module.

dice_game_tb.v: Testbench for verifying the functionality of the "dice_game" module.

test_cases.txt: Input test cases and expected outputs for various scenarios.

## License:

LICENSE: The license file that specifies the terms and conditions of using the "Dice_Game_Simulation" repository.
README:

README.md: This README file provides an overview of the "Dice_Game_Simulation" repository, including an abstract, introduction, inputs, and outputs of the "dice_game" module, and a brief description of the repository's structure.
This GitHub repository serves as a complete package for understanding, implementing, simulating, and testing the dice rolling game module using Verilog. Developers can explore the provided documentation, examine the source code, run the testbench, and even contribute to the projec
