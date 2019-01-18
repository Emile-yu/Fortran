program type
	implicit none
	integer :: num
	character :: sex
	character(len=10) :: name
	integer ::a(3)
	integer ::b(3,3)
	integer ::i,j
	num = 1
	sex = "h"
	!name = "Julien"
	print*,"Entrez une chaine de valeur :"
	read*,name
	print*,"num=",num,";sex=",sex,";name=",name

	data a /1,2,3/
	!allocate(b(size(a)))
	!data b /4,5,6/

	write(6,'(i1,i1,i1)') a
	print*,a

	do i=1,3
		do j=1,3
			b(i,j)=i+1
		enddo
	enddo
	!b=reshape((/1,2,3,4,5,6,7,8,9/),shape(b))
	write(6,'(i1,i1,i1)') b(:,:)

	
end program type