COMPILER = g++
TARGET = dist/app
FLAGS = -g -Wall

all: build/main.o
	$(COMPILER) $(FLAGS) dist/main.o -o $(TARGET)

build/main.o: src/main.cpp
	$(COMPILER) -c src/main.cpp -o dist/main.o

clean:
	rm dist/*

run:
	./$(TARGET)
