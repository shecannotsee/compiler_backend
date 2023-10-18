nasm -f elf64 ./src/hello_world.asm -o hello_world.o
ld hello_world.o -o hello_world
