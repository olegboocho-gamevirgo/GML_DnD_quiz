/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе



geeking = 0
trueth_ans = 0
all_ans = 0
tex = "?% geek\n(more 5)"

function add_ans(tueth){
	all_ans++
	trueth_ans += tueth
	
	geeking = (trueth_ans/all_ans)*100
	if(all_ans>=5){
		tex = string(geeking)+"%  geek"
	}else{
		tex ="?% geek\n(more "+string(5-all_ans)+")"
	}
}

function back(){

	room_goto(Room1)
}


function restart(){
	
	if(Obj_quize.result = ""){
		Obj_top.add_ans(false)
	}
	
	if(room = Room_ClassSkill){
		Obj_quize.start()
	}else{
		Obj_quize.get_question()
	}
	
	
}





