/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

truly = ""

// Inherit the parent event
event_inherited();

function start(){
	url = "https://www.dnd5eapi.co/api/2014/monsters"
	second_question = "in progress"
	main_question = "Who is this monster?"
	request = http_request(url, "GET", headers, payload);
	show_debug_message(url)
}

function get_question(){
	randomize()
	monsters = []
	
	repeat(6){
		var rand = irandom(count-1)
		var features = results_array[rand]
		array_push(monsters, features)
	}
	
	url = "https://www.dnd5eapi.co"+variable_struct_get(monsters[irandom(array_length(monsters)-1)], "url")
	show_debug_message(url)
	alarm[0]=5
	result = ""
}

function get_answer(class_answer){
	if(result = ""){
		if ( string_lower(answer) == string_lower(class_answer)){
			result = "Correctly.\n"+answer
			res_col = corect_color
			Obj_top.add_ans(true)
		}else{
			result = "Wrong.\n"+answer
			res_col = wrong_color
			Obj_top.add_ans(false)
		}
	}
}

function set_answer(data){
	
	for(var i = 0;i < array_length(monsters);i++){		
		
		inst_id = instance_find(Obj_Y_N_choise,i)
		inst_id.set_text(variable_struct_get(monsters[i],"name") ,false)
	}
	
	second_question = ""
	
	var desc = variable_struct_get(data, "actions")
			
	for(var i = 0; i < array_length(desc); i++){
		
		second_question +=variable_struct_get(desc[i],"name")+"\n"
		second_question +=variable_struct_get(desc[i],"desc")+"\n"
	}
	
	var desc = variable_struct_get(data, "special_abilities")
			second_question += "\n"
	for(var i = 0; i < array_length(desc); i++){
		
		second_question +=variable_struct_get(desc[i],"name")+"\n"
		second_question +=variable_struct_get(desc[i],"desc")+"\n"
	}
	
	
	
	
	
	answer =  variable_struct_get(data,"name") // data.index

	second_question = string_replace_all(second_question, answer , "monster");
				
	second_question = string_replace_all(second_question,string_lower(answer), "monster");	
	
	var words = split_text(answer);

	for (var i = 0; i < array_length(words); i++) {
	    var w = words[i];
	    show_debug_message(w)
	    second_question = string_replace_all(second_question, w, "monster");
	    second_question = string_replace_all(second_question, string_lower(w), "monster");
	}
}