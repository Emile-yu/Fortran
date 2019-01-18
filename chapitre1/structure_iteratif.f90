program structureiteratif
	integer :: choix
	integer :: i,j,k
	integer :: nb

	nb=0
	print*,"Entrez choix"
	read*,choix

	select case (choix)
		case (1)
			do i=1,5,1
				nb=nb+i
			end do
			print*,"nb = ",nb

		case (2)
			do while(nb .lt. 10)
				nb=nb+1
			end do
			print*,"nb = ",nb

		case default
			do
				nb=nb+1
				if(nb .gt. 10) exit	
			end do
			print*,"nb = ",nb
	end select

end program structureiteratif