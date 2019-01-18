program main
  use mode
  use mode1
  implicit none

  type(t_triangle) :: triangle_ctx
  type(t_donne) :: donne_ctx
  integer :: class
  character(len=4) :: name
  real :: age
  integer :: c
  integer :: l
  integer :: d
  integer :: area

  l = 2
  d = 5
  class = 02
  name = 'paul'
  age = 35.5

  call donne_init(donne_ctx, class, name, age)

  write(6, '(a,i0,a,a1,a,f0.3)') "class = ", donne_ctx%class, "; name = ", donne_ctx%name, &
          "; age = ",donne_ctx%age

  c= getclass(donne_ctx)

  print *,"class =", c

  call setclass(donne_ctx)

  print *,"class =", donne_ctx%class, "; name = ", donne_ctx%name, &
          "; age = ",donne_ctx%age

  call triangle_init(triangle_ctx, l, d)

  area = triangle_area(triangle_ctx)

  write(6, '(a,i0)') "area =",area

end program main
