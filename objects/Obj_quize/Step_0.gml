/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе


if (device_mouse_check_button(0, mb_left)) {
    var dy = device_mouse_y(0) - touch_prev_y;
    wheel += dy;
}

// сохраняем позицию
touch_prev_y = device_mouse_y(0);

// ограничения
draw_set_font(Font2)
var text_h = string_height_ext(second_question, 30, sprite_width-64);
var min_wheel = min(0, sprite_height-64  - text_h - 30);

wheel = clamp(wheel, min_wheel, 0);









