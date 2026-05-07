/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

draw_self()

if(result = ""){
	draw_set_halign(fa_left)
	draw_set_font(Font_base)
	draw_set_valign(fa_top)
	//draw_text(text_X,text_Y,main_question)
	draw_set_color(#290603)
	draw_text_ext(text_X,text_Y,main_question,text_interwal,ttext_w)
	
	draw_set_color(global.color_text)
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
	draw_text_ext(0,0+wheel,second_question,text_interwal,ttext_w)
	
	surface_reset_target();
	draw_surface(surf, text_X,text_Y+(text_interwal*2));
}else{
	//draw_set_color(res_col)
	draw_set_halign(fa_left)
	draw_set_font(Font_big_buton)
	draw_set_valign(fa_top)
	draw_text_ext_color(text_X,text_Y+text_interwal,result,text_interwal*1.5,ttext_w,res_col[0],res_col[1],res_col[2],res_col[3],1)
}









