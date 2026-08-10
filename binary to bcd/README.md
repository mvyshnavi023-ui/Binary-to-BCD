# Binary to BCD Converter in Verilog

## Overview

This project implements a Binary-to-BCD Converter using Verilog HDL.
The design converts an 8-bit binary number into its equivalent
BCD representation using the Double Dabble algorithm.

## Features

- 8-bit binary input
- BCD conversion using Double Dabble algorithm
- Hundreds, tens, and units BCD outputs
- Combinational design
- Verilog testbench
- Simulation waveform
- Expected output

## Input

| Signal | Width | Description |
|--------|-------|-------------|
| `binary_in` | 8 bits | Binary input value |

## Outputs

| Signal | Width | Description |
|--------|-------|-------------|
| `hundreds` | 4 bits | Hundreds BCD digit |
| `tens` | 4 bits | Tens BCD digit |
| `ones` | 4 bits | Ones BCD digit |

## Conversion Method

The Double Dabble algorithm is used to convert the binary input
into BCD format.

For example:

Binary:
10110110

Decimal:
182

BCD:
0001 1000 0010

## Tools Used

- Verilog HDL
- ModelSim / Vivado / Icarus Verilog
- GTKWave

## Project Files

- `binary_to_bcd.v` - Binary-to-BCD converter
- `binary_to_bcd_tb.v` - Testbench
- `simulation/waveform.png` - Simulation waveform
- `simulation/output.log` - Simulation output

## Simulation

The testbench applies different 8-bit binary values and verifies
the corresponding hundreds, tens, and ones BCD outputs.
