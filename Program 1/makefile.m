CC = gcc
CFLAGS = -Wall -pthread

SRCS = ThreadedMatrixMultply.c
OBJS = $(SRCS:.c=.o)
TARGET = ThreadedMatrixMultply

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)