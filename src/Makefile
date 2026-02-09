CC=gcc
CFLAGS=-std=c17 -Wall -Wextra -Wpedantic -g3
LIBS=-lfl

.PHONY: clean all

all: lex

lex: lex.c
	$(CC) -o $@ $< $(LIBS)

clean:
	rm -f lex lex.c *.o
