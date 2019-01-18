OBJECTS = mode.o mode1.o

default: program

%.o: %.f90 $(HEADERS)
	gfortran -O0 -g -c $< -o $@ -fopenmp

program: $(OBJECTS) main.o
	gfortran -O3 -g $(OBJECTS)  main.o -o $@ -fopenmp

clean:
	rm -f $(OBJECTS) main.o
	rm -f program
