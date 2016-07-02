******************************		ELD Assignment 1	***********************************
***************************************************************************************************
				*	Gursimran Singh
				*	2014041
				*	BTech 2014 CSE
***************************************************************************************************
******************************		Description		***********************************
***************************************************************************************************

1. src_and_headers
	contains all the Souce code (.c files) and the Headers (.h files).
	
	a) Basic.h
		Used to include basic header files i.e.
		<stdio.h>
		
	b) Hello.h and World.h
		Declares prototypes for functions in Hello.c and World.c respectively.
		
	c) Hello.c and World.c
		Defines printHello() and printWorld() respectively.
		
	d) Print.c
		Used to call the printing functions.
		
2. bin
	all the object (.o files) are created here by Makefile.

3. exec
	the executable is created here by Makefile

4. Makefile
	a) To compile and link use $make
	b) To run use $make run
	c) To clean use $make clean
