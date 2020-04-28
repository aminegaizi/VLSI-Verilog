
#undefined start
force in_a	8'h00
force in_b	8'h00
force opcode	4'b0000
run 20

#add 8+2 = 0xA
force in_a	8'h08
force in_b	8'h02
force opcode	4'b0001
run 20

#add test carry
# 0xE1 + 0x1F = 0x00 and Carry=1
force in_a	8'hE1
force in_b	8'h1F
force opcode	4'b0001
run 20

#susbstract 0x0E - Ox07 = 0x07
force in_a      8'h0E
force in_b      8'h07
force opcode    4'b0010
run 20

#increment 0x0F + 0x01 = 0x10
force in_a      8'h0F
force in_b      8'hXX
force opcode    4'b0011
run 20

#decrement expected result: 0x05
force in_a	8'h06
force in_b	8'hXX
force opcode	4'b0100
run 20

#logic or, 0b00001001 | 0b00001111 = 0b00001111 
force in_a	8'b00001001
force in_b	8'b00001111
force opcode 	4'b0101
run 20

#logic and 
force in_a 	8'b11111101
force in_b	8'b10101010
force opcode	4'b0110
run 20

#logic xor
force in_a	8'b10101111
force in_b	8'b01010001
force opcode	4'b0111
run 20

#wrong OP code for XOR -> goes to default
force in_a      8'b10101111
force in_b      8'b01010001
force opcode    4'b1111
run 20

#logic shift right
force in_a	8'b10000000
force in_b	8'hXX
force opcode 	4'b1000
run 20

#logic shift left
force in_a	8'b11111111
force in_b	8'hXX
force opcode	4'b1001
run 20

#logic ones compe
force in_a	8'h08
force in_b	8'hXX
force opcode 	4'b1001
run 20

#logic twos comp
force in_a	8'h4D
force in_b	8'hXX
force opcode	4'b1010
run 20
