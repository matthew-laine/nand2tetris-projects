// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// SETUP
// Set R2 value to zero
@R2
M=0

// R0 contains the number we add over and over again to R2
// R1 is our counter

// Check to see if R0 or R1 is less than or equal to zero. If so, then end.
@R0
D=M
@END
D;JLE
@R1
D=M
@END
D;JLE

(LOOP)
// Add R0 to R2
@R0
D=M
@2
M=D+M

// Decrement R1
@R1
M=M-1

// GOTO LOOP if R1>0
D=M
@LOOP
D;JGT

(END)
@END
0;JMP