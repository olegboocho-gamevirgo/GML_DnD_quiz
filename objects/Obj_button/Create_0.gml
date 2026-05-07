/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе
kd = false
if(small){
	var w = sprite_width
	sprite_index = small_button
	var origin_w = sprite_get_width(sprite_index)
	image_xscale = w/origin_w
}


function swiching(){
	if(!kd){
		kd = true
		alarm[0] =  5
		switch(on_click){
			case "Room_ClassSkill":
				room_goto(Room_ClassSkill)
			break;
			
			case "Next":
			if(Obj_quize.result = ""){
				Obj_top.add_ans(false)
			}
			
			if(room = Room_ClassSkill){
				Obj_quize.start()
			}else{
				Obj_quize.get_question()
			}
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
}







