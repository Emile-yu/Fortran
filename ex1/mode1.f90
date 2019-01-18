module mode1
 implicit none
 type t_triangle
  integer :: l
  integer :: d
  contains
  !procedure :: init => triangle_init
  !procedure :: area => triangle_area
 end type t_triangle

contains
  subroutine triangle_init(triangle_ctx, l, d)
    implicit none
    type(t_triangle), intent(inout) :: triangle_ctx
    integer, intent(in) :: l
    integer, intent(in) :: d

    triangle_ctx%l = l
    triangle_ctx%d = d

  end subroutine triangle_init

  integer function triangle_area(triangle_ctx) result(area)
    implicit none
    type(t_triangle), intent(in) :: triangle_ctx

    area = triangle_ctx%l * triangle_ctx%d

  end function

end module
