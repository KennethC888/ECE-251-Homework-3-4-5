ECE 251 Homework 3,4,5

Question 1: 
addi $s2, $s2, -5
add $s0, $s1, $s2

Question 2: 


Question 3 (opcode, rs, rt, rd, funct, imm in decimal):

| MIPS code         | Type          |  opcode       |      rs       | rt             |  rd            |  funct       |  imm       | Hex equivalent
| -----------------    |   ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------------------- |
| addi $t0, $s6, 4  | I |         8      | 22              | 8             |      0          |   0         |      4            |      22C80004       |
| add $t1, $s6, $0  | R |  Content Cell  | Content Cell  | Content Cell  | Content Cell  |Content Cell  |Content Cell  |02C04820 
| sw $t1, 0($t0)    | I |  Content Cell  | Content Cell  | Content Cell  | Content Cell  |Content Cell  |Content Cell  |AD090000
| lw $t0, 0($t0)    | I |  Content Cell  | Content Cell  | Content Cell  | Content Cell  |Content Cell  |Content Cell  |8D080000 
| add $s0, $t1, $t0 | R |  Content Cell  | Content Cell  | Content Cell  | Content Cell  |Content Cell  |Content Cell  |01288020

Question 4: 
op=0x23, rs=1, rt=2, const=0x4 <br />
Type: I <br />
Assembly Language Instruction: lw $v0, 4($at) <br />
Binary Representation: 10001100001000100000000000000100
