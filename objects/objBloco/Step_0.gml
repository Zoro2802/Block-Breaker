if global.isFim{
	exit
}


if! global.blocoAlturaCerta{
	y ++
	
	if y >= 432{
		global.blocoAlturaCerta = true
	}
}