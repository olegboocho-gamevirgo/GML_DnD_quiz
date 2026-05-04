/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе


if (ds_map_find_value(async_load, "id") == request){
	if (ds_map_find_value(async_load, "status") == 0){
		
		var data = json_parse(ds_map_find_value(async_load, "result"));
		
		set_buttons()
		
		if(variable_struct_exists(data, "results")){
			var res_array = variable_struct_get(data, "results")
			if(is_array(res_array )){
				for(var i = 0; i <array_length(res_array);i++){
					
					var _res = res_array[i]
					
					array_push(buttons,fun_button_create(_res.name, make_request,"https://www.dnd5eapi.co"+_res.url))
				}
			}
		}else{
			var names = variable_struct_get_names(data)
			for(i = 0 ; i < array_length(names);i++){
				var _url = variable_struct_get(data,names[i])
				if(is_string(_url)){
					array_push(buttons,fun_button_create(names[i], make_request,"https://www.dnd5eapi.co"+_url))
					show_debug_message(names[i])
				}
			}
		}
	}
}









