// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

@R2 //R2 starts at 0
M=0

@R1
D=M

@i
M=D

@END //it will go to END if conditions do not apply
D;JEQ

(LOOP)
@R0
D=M

@R2
M=D+M

@i
D=M
D=D-1 //reduces R0 by 1 until it reaches 0
M=D

@LOOP //if the input in R0 is more than 0, it goes back to loop
D;JGT

(END) 
	@END //loop to end the program
	0;JMP