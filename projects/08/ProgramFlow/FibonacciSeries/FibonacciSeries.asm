	@R1
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	M=M-1
	A=M
	D=M
	@THAT
	M=D
	@0
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@R0
	D=A
	@THAT
	A=M+D
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M-1
	@SP
	A=M
	D=M
	@SP
	A=M+1
	A=M
	M=D
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@R1
	D=A
	@THAT
	A=M+D
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M-1
	@SP
	A=M
	D=M
	@SP
	A=M+1
	A=M
	M=D
	@R0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@2
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	A=M-1
	D=M
	A=A-1
	M=M-D
	@SP
	M=M-1
	@R0
	D=A
	@ARG
	A=M+D
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M-1
	@SP
	A=M
	D=M
	@SP
	A=M+1
	A=M
	M=D
(MAIN_LOOP_START)
	@R0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP // START: if-goto
	M=M-1
	A=M
	D=M // Check if there is true value on top of the stack
	@COMPUTE_ELEMENT
	D;JNE // END: if-goto
	@END_PROGRAM
	0;JMP
(COMPUTE_ELEMENT)
	@R0
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@R1
	D=A
	@THAT
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	A=M-1
	D=M
	A=A-1
	M=M+D
	@SP
	M=M-1
	@R2
	D=A
	@THAT
	A=M+D
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M-1
	@SP
	A=M
	D=M
	@SP
	A=M+1
	A=M
	M=D
	@THAT
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	A=M-1
	D=M
	A=A-1
	M=M+D
	@SP
	M=M-1
	@SP
	M=M-1
	A=M
	D=M
	@THAT
	M=D
	@R0
	D=A
	@ARG
	A=M+D
	D=M
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@1
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M+1
	@SP
	A=M-1
	D=M
	A=A-1
	M=M-D
	@SP
	M=M-1
	@R0
	D=A
	@ARG
	A=M+D
	D=A
	@SP
	A=M
	M=D
	@SP
	M=M-1
	@SP
	A=M
	D=M
	@SP
	A=M+1
	A=M
	M=D
	@MAIN_LOOP_START
	0;JMP
(END_PROGRAM)
(END)
	@END
	0;JMP
