/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
if(Obj_quize.result = ""){
	var mx = device_mouse_x(0)
	var my = device_mouse_y(0)
	var h = sprite_height
	var w = sprite_width
	if (point_in_rectangle(mx,my,x+0,y+0,x+w/3,y+h/4)){
		but_text = get_string_class(CLASS.barbarian)
	}
	if (point_in_rectangle(mx,my,x+w/3,y+0,x+w*0.66,y+h/4)){
		but_text = get_string_class(CLASS.bard)
	}
	if (point_in_rectangle(mx,my,x+w*0.66,y+0,x+w,y+h/4)){
		but_text = get_string_class(CLASS.cleric)
	}
	
	if (point_in_rectangle(mx,my,	x+0,	y+h/4,		x+w/3,y+h/2)){
		but_text = get_string_class(CLASS.druid)
	}
	if (point_in_rectangle(mx,my,	x+w/3,y+h/4,	x+w*0.66,y+h/2)){
		but_text = get_string_class(CLASS.fighter)
	}
	if (point_in_rectangle(mx,my,	x+w*0.66,y+h/4,	x+w,y+h/2)){
		but_text = get_string_class(CLASS.monk)
	}
	
	if (point_in_rectangle(mx,my,	x+0,	y+h/2,		x+w/3,y+h*0.75)){
		but_text = get_string_class(CLASS.paladin)
	}
	if (point_in_rectangle(mx,my,	x+w/3,y+h/2,	x+w*0.66,y+h*0.75)){
		but_text = get_string_class(CLASS.ranger)
	}
	if (point_in_rectangle(mx,my,	x+w*0.66,y+h/2,	x+w,y+h*0.75)){
		but_text = get_string_class(CLASS.rogue)
	}
	
	if (point_in_rectangle(mx,my,	x+0,	y+h*0.75,		x+w/3,y+h)){
		but_text = get_string_class(CLASS.sorcerer)
	}
	if (point_in_rectangle(mx,my,	x+w/3,y+h*0.75,	x+w*0.66,y+h)){
		but_text = get_string_class(CLASS.warlock)
	}
	if (point_in_rectangle(mx,my,	x+w*0.66,y+h*0.75,	x+w,y+h)){
		but_text = get_string_class(CLASS.wizard)
	}
	
	Obj_quize.get_answer(but_text)
	show_debug_message("choise")
	show_debug_message(but_text)
	
}







