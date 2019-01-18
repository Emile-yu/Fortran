program m
  use mpi
  !$ use omp_lib
  implicit none

  integer :: ierr, my_id, num_procs
  integer :: tid,i,j,k,n
  integer,allocatable :: tab(:,:)

  n=5
  allocate(tab(n,n))
  call MPI_INIT(ierr)
  call MPI_COMM_RANK(MPI_COMM_WORLD, my_id, ierr)
  call MPI_COMM_SIZE(MPI_COMM_WORLD, num_procs, ierr)


  !print*,"je suis processus ",my_id," sous total ",num_procs
  !$omp parallel default(shared) private(tid,i,j,k)
    tid = omp_get_thread_num()+1
    do i=tid,5,5

      do j=1,5
        tab(tid,j)=i
      enddo
      !$omp barrier

      do j=1,5
        write(6,'(a,i0,a,i0)'),"tab(",tid,",:)",tab(tid,j)
      enddo
      !$omp barrier

      do k=1,5
        tab(tid,k)=tab(tid,k)+1
      enddo

      print*,"======================="
      do k=1,5
        !$omp do
        do j=1,5
          write(6,'(a,i0,a,i0)'),"tab(",k,",",j,")",tab(k,j)
        enddo
        !$omp end do
      enddo


    end do
  !$omp end parallel

  call MPI_FINALIZE(ierr)

end program m