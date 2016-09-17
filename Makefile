all : hw1.o

hw1.o : hw1.v hw1.t.v
	iverilog hw1.t.v -o hw1.o
