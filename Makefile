CC = gcc
CFLAGS = -std=c11 -Wall -Wextra -Iinclude -O2
SRCS = src/main.c src/utils.c src/version.c
BIN = bin/main
EXAMPLE = bin/hello

.PHONY: all clean test

all: $(BIN) $(EXAMPLE)

$(BIN): $(SRCS)
	mkdir -p bin
	$(CC) $(CFLAGS) -o $@ $(SRCS)

$(EXAMPLE): examples/hello.c src/utils.c src/version.c
	mkdir -p bin
	$(CC) $(CFLAGS) -o $@ examples/hello.c src/utils.c src/version.c

test: all
	./bin/main
	./bin/hello

clean:
	rm -rf bin *.o
