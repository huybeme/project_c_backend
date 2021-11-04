Huy Le
Comp525: Compilers
Project 1: C back end
Fall 2021

Feel free to run on server (or please run on server) since I got it to compile properly there but I have attached the same files either way.

comp525@mouse:~/hle/smallc2/smallCext

I have 4 .c files that I tried to emulate (add.c, if.c, variable.c and littletest.c). They all compile  with the exception of littletest.c where my for loop seems to get stuck in a loop when emulated. Those that do emulate without error, my output is not what I expect it to be, ex) the addition is not correct for add, and I think it is due to how things are stored to memory or loaded from memory.

if trying, to emulate, follow process:
	make sccriscy
	./sccriscy anyCfile.c
	cat start.riscy > test.s
	cat anyCfile.c >> test.s
	python riscyasm.py test.s
	./riscy test.s.bin.txt
	
coderiscy.c will already write in the end.riscy to the .s file so there is no need to append end.riscy
