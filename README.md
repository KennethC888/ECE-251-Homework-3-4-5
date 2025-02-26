# ECE 251 Homework 3,4,5

 ### Question 1: <br />
addi $s2, $s2, -5 <br />
add $s0, $s1, $s2

### Question 2: <br />
f = A[0] + A[0];

### Question 3 (opcode, rs, rt, rd, funct, imm in decimal): <br />
x means that it does not apply

| MIPS code         | Type | opcode | rs  | rt  | rd  | funct | imm | Hex equivalent |
| ----------------- | ---- | ------ | --- | --- | --- | ----- | --- | -------------- |
| addi $t0, $s6, 4  | I    | 8      | 22  | 8   | x   | x     | 4   | 22C80004       |
| add $t1, $s6, $0  | R    | 0      | 22  | 0   | 9   | 32    | 0   | 02C04820       |
| sw $t1, 0($t0)    | I    | 43     | 8   | 9   | x   | x     | 0   | AD090000       |
| lw $t0, 0($t0)    | I    | 35     | 8   | 8   | x   | x     | 0   | 8D080000       |
| add $s0, $t1, $t0 | R    | 0      | 9   | 8   | 16  | 32    | 0   | 01288020       |

### Question 4: 
op=0x23, rs=1, rt=2, const=0x4 <br />
Type: I <br />
Assembly Language Instruction: lw $v0, 4($at) <br />
Binary Representation: 10001100001000100000000000000100
