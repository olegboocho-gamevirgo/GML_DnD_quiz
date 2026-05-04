/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

draw_self()

if(result = ""){
	draw_set_color(global.color_text)
	draw_set_halign(fa_left)
	draw_set_font(Font1)
	draw_set_valign(fa_top)
	draw_text(text_X,text_Y,main_question)
	draw_set_font(Font2)
	
	surface_set_target(surf);
	draw_clear_alpha(#B89B80, 1);
	draw_text_ext(0,0+wheel,second_question,30,sprite_width-64)
	
	surface_reset_target();
	draw_surface(surf, text_X,text_Y+text_interwal);
}else{
	draw_set_color(res_col)
	draw_set_halign(fa_left)
	draw_set_font(Font1)
	draw_set_valign(fa_top)
	draw_text_ext(text_X,text_Y,result,30,sprite_width-64)
}









