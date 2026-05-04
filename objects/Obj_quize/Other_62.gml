/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе


if (ds_map_find_value(async_load, "id") == request){
	if (ds_map_find_value(async_load, "status") == 0){
		
		var data = json_parse(ds_map_find_value(async_load, "result"));
		
		
		if(variable_struct_exists(data, "results")){
			results_array = variable_struct_get(data, "results")
			count = variable_struct_get(data, "count")
			
			if(array_length(results_array)=0){
				alarm[1]=5
				return;
			}
			
			if(array_length(results_array)=1){
				
				if(variable_struct_get(results_array[0],"name")= "Ability Score Improvement"){
					
					alarm[1]=5
					return;
					
				}
			}
			
			second_question = "Level "+string(lvl)
			inumer=0
			get_question()
		}
	}
}

if (ds_map_find_value(async_load, "id") == request2){
	if (ds_map_find_value(async_load, "status") == 0){
		
		var data = json_parse(ds_map_find_value(async_load, "result"));
		
		set_answer(data)
		show_debug_message("all request correct")

	}
}








