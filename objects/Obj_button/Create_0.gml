/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

if(small){
	var w = sprite_width
	sprite_index = small_button
	var origin_w = sprite_get_width(sprite_index)
	image_xscale = w/origin_w
}


function swiching(){

switch(on_click){
	case "Room_ClassSkill":
		room_goto(Room_ClassSkill)
	break;
	
	case "Next":
		Obj_quize.get_question()
	break;
	
	case "Room1":
		room_goto(Room1)
	break;
	
	case "Room_Spell":
		room_goto(Room_Spell)
	break;
	
	case "Room_monsters":
		room_goto(Room_monsters)
	break;
}

}







