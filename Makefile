# Define the compiler and the flags
CC=gcc
CFLAGS=-I.

# 'all' target will build the 'hello' executable
all: hello

# Link the object file to produce the executable
# The dependency 'hello.o' will trigger compilation of 'hello.c'
hello: hello.o
	$(CC) -o hello hello.o

# Compile the source file into an object file
hello.o: hello.c
	$(CC) -c hello.c $(CFLAGS)

# 'clean' target for removing build artifacts
clean:
	rm -f hello hello.o

# Declare 'clean' as a phony target to avoid confusion with any file of the same name
.PHONY: clean
