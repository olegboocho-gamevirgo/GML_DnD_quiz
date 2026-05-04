/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

x = display_get_gui_width()/4
y = display_get_gui_height()/2

prev_mouse_x = 0
prev_mouse_y = 0
spr_back = Spr_menu_puzle
spr_buton = Spr_buton
horved_color = $F4C6F8
buttons = [];

//url = "https://www.dnd5eapi.co/api/2014/"



function make_request(url){
	payload = {}
	headers = {  "Accept": "application/json" }
	
	request = http_request(url, "GET", headers, payload);
	show_debug_message(url)
}


function set_buttons(){


		buttons = [
			fun_button_create("Start", make_request,"https://www.dnd5eapi.co/api/2014/"),
			//fun_button_create(get_translate(global.translate_grid,"Settings"),	open_settings),
			//fun_button_create(get_translate(global.translate_grid,"Volume settings"),	fun_volumSetings),   
			//fun_button_create(get_translate(global.translate_grid,"Quit game"),	 game_end),
]
}


set_buttons()