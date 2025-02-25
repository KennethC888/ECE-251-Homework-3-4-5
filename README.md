ECE 251 Homework 3,4,5

Question 1: 
addi $s2, $s2, -5
add $s0, $s1, $s2

Question 2: 


Question 3:

| MIPS code         | Type          |  opcode       |      rs       | rt             |  rd            |  funct       |  imm       | Hex equivalent
| -----------------    | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- | ------------- |
| addi $t0, $s6, 4  | I | d             | d              |              |                |            |                  |             |
| add $t1, $s6, $0  | R |  Content Cell  | Content Cell  | Content Cell  | Content Cell  |Content Cell  |Content Cell  |Content Cell  
| sw $t1, 0($t0)    | I |  Content Cell  | Content Cell  | Content Cell  | Content Cell  |Content Cell  |Content Cell  |Content Cell  
| lw $t0, 0($t0)    | I |  Content Cell  | Content Cell  | Content Cell  | Content Cell  |Content Cell  |Content Cell  |Content Cell  
| add $s0, $t1, $t0 | R |  Content Cell  | Content Cell  | Content Cell  | Content Cell  |Content Cell  |Content Cell  |Content Cell  

Question 4: 
op=0x23, rs=1, rt=2, const=0x4 <br />
Type: I <br />
Assembly Language Instruction: lw $v0, 4($at) <br />
Binary Representation: 10001100001000100000000000000100
