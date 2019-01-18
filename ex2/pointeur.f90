program pointeur
	use, intrinsic :: iso_c_binding
	integer,pointer   ::a(:)
	integer,pointer				 ::c(:)
	integer,pointer              ::b(:,:)
	integer						 ::n
	integer						 ::i,j,num=1
	integer, pointer :: p1(:)
	n=3
	allocate(a(2*2))
	a=reshape((/1,2,3,4/),shape(a));
	print*,a

	call c_f_pointer(cptr=c_loc(a),fptr=b,shape=[2,2])

	print*,b

	if ( associated(p1) ) then
		print*,"here"
	endif

	print*,"======================================="

	a=reshape((/3,4,5,6/),shape(a));
	print*,a


	call c_f_pointer(cptr=c_loc(a),fptr=b,shape=[1,4])

	print*,b



end program	pointeur