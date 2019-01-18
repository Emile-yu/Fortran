program p
 !$ use omp_lib
 implicit none

 integer  :: i,j,tid

 !$omp parallel private(i,j)

    !$omp do collapse(2)
      do i=1,2
        do j=1,5
          print*,"num_thread = ",omp_get_thread_num()
        end do
      end do
    !$omp end do

 !$omp end parallel

end program p
