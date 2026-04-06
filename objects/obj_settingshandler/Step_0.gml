window_set_fullscreen(global.setting_fullscreen)
if keyboard_check_pressed(ord("F"))
{
	global.setting_fullscreen = flip_bool(global.setting_fullscreen)
	settings_savetocomputer()
}
if room == rm_settings
{
	back_selected = point_distance(0, back_y, 0, mouse_y) <= 35 && point_distance(room_width / 2, 0, mouse_x, 0) <= 300
	if back_selected && mouse_check_button_pressed(mb_left)
		scr_fadein(true, rm_patzone)
}