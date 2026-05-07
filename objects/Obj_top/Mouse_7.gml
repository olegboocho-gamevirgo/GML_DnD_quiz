/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

	var mx = device_mouse_x(0)
	var my = device_mouse_y(0)
	if (point_in_rectangle(mx,my,x-510,y-35,x-230,y+35)){
		back()
	}

	if (point_in_rectangle(mx,my,x+230,y-35,x+510,y+35)){
		restart()
	}











