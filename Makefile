
all: calc test-mini test-mini2 caller

# TODO: complete makefile rules for calc, test-mini, test-mini2, caller.
test-mini: test.c mini.c
	gcc test.c mini.c -Wall -o test-mini


clean:
	rm -f *.o
	rm -f calc
	rm -f caller
	rm -f test-mini
	rm -f test-mini2