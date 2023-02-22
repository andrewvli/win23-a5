CC = gcc

objects = addition.o division.o main.o multiplication.o subtraction.o

calculator: $(objects)
	$(CC) $(objects) -o calculator

$(objects): %.o:%.c
	cc -c $< -o $@

clean:
	rm -f $(objects) calculator