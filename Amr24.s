			AREA PROG24, CODE, READONLY
ENTRY
				MOV R7, #0
				MOV R2, #1
LOOP 		BL SQU
				ADD R7, R7, R4
				ADD R2, R2, #1
				CMP R2, #6
				BNE LOOP
GO			B GO
SQU			MUL R4, R2, R2
				MOV PC, LR
				END