#nasm -f elf32 asm01.s -o asm01.o
#ld asm01.o -o a01

for arg in "$@"
do

nasm -f elf32 "$arg" -o com32.o
#ld -m elf32 com32.o -o a01
ld -m elf_i386 -s -o a01 asm01.o
#./a01

done