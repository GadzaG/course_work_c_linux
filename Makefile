CC = gcc

CFLAGS = -Wall -Werror -Wextra -pedantic

TARGET = tdp.exe

SRCS = src/main.c src/temp_functions.c

OBJS = $(SRCS:.c=.o)

INCS = -Iinclude

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)
	del $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) $(INCS) -c $< -o $@

clean:
	del $(OBJS) $(TARGET)

.PHONY: all clean
