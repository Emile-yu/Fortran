program hello
 include "mpif.h"
 
 integer ::ierr,num,id
 call MPI_INIT(ierr)
 call mpi_comm_rank(mpi_comm_world,id,ierr)
 call mpi_comm_size(mpi_comm_world,num,ierr)
 print*,"je suis processus ",id,&
 		" sous total :",num
 call mpi_finalize(ierr)


end program hello