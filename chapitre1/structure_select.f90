program structureselect
	integer ::mois
	print*,"Entrez mois"

	read*,mois

	select case (mois)

		case (1,3,5,7,8,10,12)
			print*,"31 jours"
		case (4,6,9,11)
			print*,"30 jours"
		case (2)
			print*,"28 jours"
		case default
			print*,"wrong number"

	end select

end program structureselect