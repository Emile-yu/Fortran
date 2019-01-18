mpicc hello_world.c -o hello
mpiexec -n 4 ./hello
mpirun -n 4 ./hello

