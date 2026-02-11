CC=gcc
CFLAGS=-std=c17 -Wall -Wextra -Wpedantic -g3
LIBS=-lfl

.PHONY: clean all

all: lex

lex.l: definitions.l $(shell find rules -type f) user_code.l
	cat definitions.l $(shell find rules -type f -print) user_code.l > lex.l

lex.c: lex.l
	lex -t $< > $@ 
lex: lex.c
	$(CC) -o $@ $< $(LIBS)

clean:
	rm -f lex lex.c lex.l *.o
