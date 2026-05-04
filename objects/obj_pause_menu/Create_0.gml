
prev_mouse_x = 0
prev_mouse_y = 0
spr_back = Spr_menu_puzle
spr_buton = Spr_buton
horved_color = $F4C6F8
buttons = [];
uping = true

x = display_get_gui_width()/4
y = display_get_gui_height()/2



function set_buttons(){
	focus = -1
	switch (global.ui_status){
		
	case 	UI_STATUS.PAUS_MENU:
			
		buttons = [
			fun_button_create(get_translate(global.translate_grid,"Continue"),	Obj_controler.pres_pause),
			fun_button_create(get_translate(global.translate_grid,"Settings"),	open_settings),
			fun_button_create(get_translate(global.translate_grid,"Volume settings"),	fun_volumSetings),   
			fun_button_create(get_translate(global.translate_grid,"Quit game"),	 game_end),
		];
	break;
	
	
	case 	UI_STATUS.SETINGS_MENU:
		var skrin = ""
		if(window_get_fullscreen()){
			skrin = get_translate(global.translate_grid,"full-screen")
		}else{
			skrin = get_translate(global.translate_grid,"Windowed mod")
		}	
		
		buttons = [
			fun_button_create("< "+get_translate(global.translate_grid,"language")+" >",	language),
			fun_button_create(skrin,	set_skrin),
			fun_button_create("< "+string( global.screen_w)+"x"+	string( global.screen_h) +" >",	set_skrin_size),
			fun_button_create("< "+get_translate(global.translate_grid,"Vibro")+" "+string( global.vibro) +" >",	set_vibro),
			fun_button_create(get_translate(global.translate_grid,"Back"),	back),
		];
		
	break;
	
	case 	UI_STATUS.VOLUM_SETINGS_MENU:
	
		
		
			buttons = [
			fun_button_create("< "+get_translate(global.translate_grid,"Volume")+" "+	string( ds_map_find_value(global.vol,SETTINGS_CONST.VOL_MASTER))+" >",	set_vol,	SETTINGS_CONST.VOL_MASTER),
			fun_button_create("< "+get_translate(global.translate_grid,"Music")+" "+	string( ds_map_find_value(global.vol,SETTINGS_CONST.VOL_MUSIK))+" >",	set_vol,	SETTINGS_CONST.VOL_MUSIK),
			fun_button_create("< "+get_translate(global.translate_grid,"Effects")+" "+	string( ds_map_find_value(global.vol,SETTINGS_CONST.VOL_FX))+" >",		set_vol,	SETTINGS_CONST.VOL_FX),
			fun_button_create(get_translate(global.translate_grid,"Back"),	back)
			];
		
		
	break;
	}
	
	
}


set_buttons()