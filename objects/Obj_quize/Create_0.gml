/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

main_question = "What class are we talking about raising the level of?"
second_question = "in progress"
text_X = x - (sprite_width/2)+150
text_Y = y - (sprite_height/2)+100
text_interwal = 78
request2 = noone
payload = {}
headers = {  "Accept": "application/json" }
answer = noone
result = ""
res_col = #167B1F
ttext_h = sprite_height-335
ttext_w =sprite_width-300 
surf = surface_create( ttext_w, ttext_h);
wheel = 0
touch_prev_y = 0;
corect_color =  [ #167B1F, #167B1F, #0D4C11, #0D4C11]
wrong_color =	[ #960D0D, #960D0D, #4C0606, #4C0606]
results_array = []
inumer = 0
lvl = 0

function start(){
	randomize()
	var class = get_string_class(irandom(11))
	lvl = irandom_range(1,20)
	answer = class
	show_debug_message(answer)
	url = "https://www.dnd5eapi.co/api/2014/classes/"+class+"/levels/"+string(lvl)+"/features"
	second_question = "in progress"
	request = http_request(url, "GET", headers, payload);
	show_debug_message(url)
	result = ""
}

alarm[1] = 3
//start()

function get_question(){
	

	if(inumer<count){
		url = "https://www.dnd5eapi.co"+results_array[inumer].url
		inumer++
		show_debug_message(url)
		alarm[0]=5
	}
	

}

function get_answer(class_answer){
	if(result = ""){
		if ( string_lower(answer) == string_lower(class_answer)){
			result = "Correctly.\nIt is "+ answer
			res_col = corect_color
			Obj_top.add_ans(true)
		}else{
			result = "Wrong.\nIt is "+ answer
			res_col = wrong_color 
			Obj_top.add_ans(false)
		}
	}
}

function set_answer(data){
			
	
	
	var temp_question = variable_struct_get(data, "name")
	
	var desc = variable_struct_get(data, "desc")
	
	for(var i = 0; i < array_length(desc); i++){
		
		temp_question +="\n"+desc[i]
		
	}
	wheel = 0
	
	if(!is_undefined(answer)){
		second_question += "\n"+ string_replace_all(temp_question, answer, "[cass name]");
	}
	
	get_question()
}








