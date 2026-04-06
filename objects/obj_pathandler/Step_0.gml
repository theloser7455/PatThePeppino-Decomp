if keyboard_check(vk_tab) && os_isnotbrowser()
{
	reset_timer++
	if reset_timer >= 120
	{
		reset_timer = 0
		data_wipe()
	}
}
else
	reset_timer = max(reset_timer - 2, 0)
if room == rm_theinstructions
{
	back_selected = point_distance(0, back_y, 0, mouse_y) <= 35 && point_distance(room_width / 2, 0, mouse_x, 0) <= 300
	if (back_selected && mouse_check_button_pressed(mb_left))
		scr_fadein(true, rm_patzone)
}