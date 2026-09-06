
all: calc test-mini test-mini2 caller

# TODO: complete makefile rules for calc, test-mini, test-mini2, caller.
test-mini: test.c mini.c
	gcc test.c mini.c -Wall -o test-mini

test-mini2: mini_mod.S test.c
	gcc mini_mod.S test.c -Wall -o test-mini2

calc: calc.o mystery.o
	gcc calc.o mystery.o -Wall -o calc

caller: caller.c
	gcc caller.c -Wall -o caller

clean:
	rm -f *.o
	rm -f calc
	rm -f caller
	rm -f test-mini
	rm -f test-mini2