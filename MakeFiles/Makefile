# Syntax:
# targets: prerequisites
#	command
#	command
#	command
some_var := file1 file2

# to run all the targets

all: var HelloProgram Run_HelloProgram four clean

Run_HelloProgram: HelloProgram
	./HelloProgram
	
	
var:
	echo "The variable is" $(some_var)
	
HelloProgram: HelloProgram.c
	gcc HelloProgram.c -o HelloProgram
	./HelloProgram
	
four: $(wildcard *.c)
	ls -la $?

#hello:
#	echo "Hello World!" 
#	echo "Printing this if hello doesn't exist"

clean:
	rm HelloProgram

