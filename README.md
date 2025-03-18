# 12-bit-ALU
Design and Implementation of ALU using Verilog.

This repository contains the design and implementation of a 12-bit Arithmetic Logic Unit (ALU) using Verilog. The ALU is a fundamental component in digital systems, capable of executing a wide range of arithmetic and logical operations, making it a crucial building block for various computing applications.

Features: 

The 12-bit ALU supports the following operations:

Addition: Performs 12-bit binary addition.

Subtraction: Executes 12-bit binary subtraction with sign extension.

Multiplication: Supports multiplication of two 12-bit operands.

Logical Shifting: Allows logical left and right shifts.

Increment/Decrement: Increments or decrements the operand by 1.

Logical Operations: Includes AND, OR, XOR, and NOT operations.

Comparison: Compares two operands for equality, greater than, or less than.


Design Overview

The ALU was implemented in Verilog to simulate the basic arithmetic and logical functions that are integral to digital circuit design. The module operates on 12-bit input values and outputs a 12-bit result based on the selected operation.

Key Features:

12-bit Input/Output:
          
          The ALU handles 12-bit-wide data inputs and outputs, making it suitable for a variety of digital system applications.
Control Signals: 
          
          The operation performed is determined by a set of control signals, allowing for flexibility in different use cases.
Overflow Detection: 
          
          The design includes detection for overflow conditions in both addition and subtraction operations.
Simulation and Testing:
          
          The ALU design has been verified through simulation using a test bench in Cadence SimVision. The testbench thoroughly tests each ALU operation by applying various test vectors and verifying the output against the expected results.

Simulation Results:
        
        The ALU was successfully verified for all supported operations, with correct functionality across all tested scenarios.
