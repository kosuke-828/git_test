CC=gcc
CFLAGS= -Wall -Wextra -g
BUILD_DIR=build
TARGET=$(BUILD_DIR)/hello
SRC=hello.c
all: $(TARGET)

$(TARGET): $(SRC)
	mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET)
run: all
	./$(TARGET)
clean:
	rm -rf $(BUILD_DIR)
