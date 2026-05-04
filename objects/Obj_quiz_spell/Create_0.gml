/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

truly = ""

// Inherit the parent event
event_inherited();

url = "https://www.dnd5eapi.co/api/2014/spells"
second_question = "in progress"
main_question = "Is this statement true?"
request = http_request(url, "GET", headers, payload);
show_debug_message(url)


function get_question(){
	result = ""
	
	randomize()
	var rand = irandom(count-1)
	var features = results_array[rand]
	
	url = "https://www.dnd5eapi.co"+variable_struct_get(features, "url")
	show_debug_message(url)
	alarm[0] = 5
	
}

function get_answer(class_answer){
	if(result = ""){
		if ( string_lower(answer) == string_lower(class_answer)){
			result = "Сorrectly. "+quetion_type+" "+truly
			res_col = corect_color
			Obj_geek.add_ans(true)
		}else{
			result = "Wrong. "+quetion_type+" "+truly
			res_col = wrong_color
			Obj_geek.add_ans(false)
		}
	}
}

quetion_types  = [ "Range","Concentration","School","Classes","Level" ]
range = ["30 feet","self","120 feet","60 feet","90 feet","Touch","Unlimited"]
spell_class = ["bard","cleric","druid","paladin","ranger","sorcerer","warlock","wizard"]
function set_answer(data){
			second_question = variable_struct_get(data, "name")
			
			var desc = variable_struct_get(data, "desc")
			for(var i = 0; i < array_length(desc); i++){
				second_question +="\n"+desc[i]
			}			
			var desc = variable_struct_get(data, "higher_level")
			for(var i = 0; i < array_length(desc); i++){
				second_question +="\n"+desc[i]
			}
			
			wheel = 0
			var rand = irandom(1)
			if(rand = 1){
				answer = "Yes"
			}else{
				answer = "No"
			}
			show_debug_message("answer")
			show_debug_message(answer)
			randomize()
			quetion_type = quetion_types[irandom(array_length(quetion_types)-1)]
			
			switch(quetion_type){
				
				case "Range":
				
					truly = variable_struct_get(data, "range")

				
					if(answer = "Yes"){
						var tex = truly
					}else{
						
						do{
							var tex = range[irandom(array_length(range)-1)]
						}until(tex != truly)
					}
					
					
					main_question = "Does this spell have a range of "
					main_question += tex
					main_question += "?"
				break;
				
				case "Concentration" :
				
					truly = variable_struct_get(data, "concentration")
					
					if(truly){
						answer = "Yes"
						truly = "is required"
					}else{
						answer = "No"
						truly = "is not required"
					}
					
					main_question ="Does this spell require concentration?"
				break;
				
				case "School" :
				
					truly = variable_struct_get(data, "school").index

				
					if(answer = "Yes"){
						var tex = truly
					}else{
						do{
							var tex = get_string_spell_skool(irandom(7))
						}until(tex != truly)
					}
					
					
					main_question = "Is this a spell from the school of "
					main_question += tex
					main_question += "?"
					
					truly = string_insert("of ",truly,1)
				
				break;
				
				case "Classes" :
				var classes = variable_struct_get(data, "classes")
				var tex = spell_class[irandom(array_length(spell_class)-1)]
				answer = "No"
				var temp_truly =": "
					for(var i = 0; i < array_length(classes); i++){
						var temp_class = variable_struct_get(classes[i], "index")
						temp_truly += temp_class+", "
												
						if(temp_class = tex) {
							answer = "Yes"
						}
					}
					
					truly = string_delete(temp_truly, string_length(temp_truly)-1, 2)
					main_question = "Can "
					main_question = string_upper(string_char_at(tex, 1)) + string_copy(tex, 2, string_length(tex) - 1)
					main_question += " cast this spell by default?"
					
				break;
				
				
				case "Level" : 
				
					truly = string(variable_struct_get(data, "level"))

				
					if(answer = "Yes"){
						var tex = truly
					}else{
						
						do{
							var tex = string(irandom(9))
						}until(tex != truly)
					}
					
					
					main_question = "Is this a level "
					main_question += tex
					main_question += " spell?"
				
				break;
			}
			
			show_debug_message("truly")
			show_debug_message(truly)
			

}