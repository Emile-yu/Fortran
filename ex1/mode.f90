module mode
  !$ use omp_lib
  implicit none
  type t_donne
    integer :: class
    character(len=4) :: name
    real :: age
  end type t_donne

contains

  subroutine donne_init(donne_ctx, class, name, age)
    implicit none
    type(t_donne), intent(inout)::donne_ctx
    integer, intent(in) ::class
    character(len=4), intent(in) ::name
    real,intent(in) ::age

    donne_ctx%class = class
    donne_ctx%name = name
    donne_ctx%age = age
  end subroutine donne_init

  integer function getclass(donne_ctx) result(class)
    implicit none
    type(t_donne), intent(in) :: donne_ctx

    class = donne_ctx%class
  end function getclass

  subroutine setclass(donne_ctx)
    implicit none
    type(t_donne), intent(inout):: donne_ctx

    !$omp parallel firstprivate(donne_ctx)
      print *,"avant class = ",donne_ctx%class,"; thread = ",omp_get_thread_num()
      donne_ctx%class = donne_ctx%class +1
      print *,"after class = ",donne_ctx%class,"; thread = ",omp_get_thread_num()

      write(6,'(a,i0,a,i0)') "after class = ",donne_ctx%class,"; thread = ",omp_get_thread_num()

    !$omp end parallel
  end subroutine setclass
end module mode
