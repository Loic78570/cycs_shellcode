#nasm -f elf64 asm01.s -o asm01.o
#ld -s -o a01 asm01.o

for arg in "$@"
do

nasm -f elf64 "$arg" -o com32.o
#ld -m elf32 com32.o -o a01
ld -m elf_x86_64 -s -o a01 asm01.o
echo "C'est build! (./a01)"
#./a01

done