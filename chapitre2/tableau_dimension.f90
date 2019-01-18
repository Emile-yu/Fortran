program tableaudimension

	integer,dimension(-1:1) :: tab = (/1,2,3/)
	integer,dimension(2,3) :: mat
	integer ::i,j
	DATA ((mat(i,j),i=1,2),j=1,3) /1,2,3,4,5,6/
	print*,"tab[-1] = ",tab(-1)
	print*,"tab[0] = ",tab(0)
	print*,"tab[1] = ",tab(1)

	print*,"(1,1) ",mat(1,1)
	print*,"(2,1) ",mat(2,1)
	print*,"(1,2) ",mat(1,2)
	print*,"(2,2) ",mat(2,2)
	print*,"(1,3) ",mat(1,3)
	print*,"(2,3) ",mat(2,3)

end program tableaudimension