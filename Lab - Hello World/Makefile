all: helloworld.o
	
helloworld.o: helloworld.asm
	nasm -f elf32 -g helloworld.asm
	ld -melf_i386 -g helloworld.o -o helloworld.out 


clean:
	rm helloworld.o helloworld.out
