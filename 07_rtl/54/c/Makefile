CC=clang
CFLAGS=-Wall -Wextra -Werror -pedantic
SRC=asm.c
TARGET=asm.out

.PHONY: all clean

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $@ $^

format:
	@clang-format -i -style="{ColumnLimit: 120}" $(SRC)

clean:
	rm -f $(TARGET)