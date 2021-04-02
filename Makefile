preprocessor:
	gcc -E prog-add.c -o prog-add.i #This is the preprocessor output(.i file).
	xdg-open prog-add.i

compilation:
	gcc -S prog-add.i            #This is the compilation output(.s file).
	xdg-open prog-add.s

assemblyaddfile:
	nasm -f elf64 add.asm -o add.o    #This is the assembly to object code output of the add assembly file(.o file).
	xdg-open add.o

assemblymainfile:
	gcc -c prog-add.s -o prog-add.o    #This is the assembly to object code output of the prog-add.c code file(.o file).
	xdg-open prog-add.o

finalOutput:
	gcc add.o prog-add.o -o a.out     #This is the final executable output(.out file).
	./a.out