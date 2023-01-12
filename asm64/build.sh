#nasm -f elf64 asm01.s -o asm01.o
#ld -s -o a01 asm01.o

for arg in "$@"
do

#nasm -f elf64 "$arg" -o com32.o
nasm -felf64 "$arg" -o testz.o
#ld -m elf32 com32.o -o a01
#ld -m elf_x86_64 -s -o a01 asm01.o
ld testz.o

echo "C'est build! (./a.out)"
#./a01

done