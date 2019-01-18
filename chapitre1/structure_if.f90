program structureif
	integer :: age

	print*,"Entrez age"
	read*,age

	if ( age .lt. 18 ) then
		print*,"under 18"
	else if ( age .gt. 18 .and. age .lt. 30 ) then
		print*,"a student"
	else 
		print*,"old people"
	end if   

end program structureif