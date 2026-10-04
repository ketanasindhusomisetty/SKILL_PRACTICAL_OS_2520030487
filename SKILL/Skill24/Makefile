CC = gcc
CFLAGS = -Wall -Wextra -Iinclude

TARGET = skill24

SRC = src/main.c

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET)

run: $(TARGET)
	./$(TARGET)

test: $(TARGET)
	./tests/test.sh

clean:
	rm -f $(TARGET)

.PHONY: all run test clean
