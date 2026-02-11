CC=gcc
CFLAGS=-std=c17 -Wall -Wextra -Wpedantic -g3
LIBS=-lfl

.PHONY: clean all

all: scanner

scanner.l: definitions.l $(shell find rules -type f) user_code.l
	cat definitions.l $(shell find rules -type f -print) user_code.l > scanner.l

scanner.c: scanner.l
	lex -t $< > $@ 
scanner: scanner.c
	$(CC) -o $@ $< $(LIBS)

clean:
	rm -f scanner scanner.c scanner.l *.o
