/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

main_question = "What class are we talking about raising the level of?"
second_question = "in progress"
text_X = x - (sprite_width/2)+32
text_Y = y - (sprite_height/2)+16
text_interwal = 55
request2 = noone
payload = {}
headers = {  "Accept": "application/json" }
answer = noone
result = ""
res_col = #167B1F
surf = surface_create(sprite_width-64, sprite_height-96);
wheel = 0
touch_prev_y = 0;
corect_color =  #167B1F
wrong_color = #960D0D
results_array = []
inumer = 0

function start(){
	randomize()
	var class = get_string_class(irandom(11))
	var lvl = irandom_range(1,20)
	answer = class
	show_debug_message(answer)
	second_question = "Level "+string(lvl)
	url = "https://www.dnd5eapi.co/api/2014/classes/"+class+"/levels/"+string(lvl)+"/features"
	//second_question = "in progress"
	request = http_request(url, "GET", headers, payload);
	show_debug_message(url)
	result = ""
}

start()

function get_question(){
	if(inumer<count){
		url = "https://www.dnd5eapi.co"+results_array[inumer].url
		inumer++
		show_debug_message(url)
		alarm[0]=2
	}
	
	if(result != ""){
		start()
		results_array = []
		inumer = 0
	}
}

function get_answer(class_answer){
	if(result = ""){
		if ( string_lower(answer) == string_lower(class_answer)){
			result = "Сorrectly. It is "+ answer
			res_col = corect_color
		}else{
			result = "Wrong. It is "+ answer
			res_col = wrong_color 
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
			
			second_question += "\n"+ string_replace_all(temp_question, answer, "[cass name]");
			get_question()
			
}








