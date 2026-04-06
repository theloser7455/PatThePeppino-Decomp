var click = mouse_check_button_pressed(mb_left)
if click && !instance_exists(obj_fadein)
{
	if text_selected[0]
		scr_fadein(true, rm_patzone)
	else if text_selected[1]
		scr_fadein(true, rm_settings)
	else if text_selected[2]
		scr_fadein(true, rm_theinstructions)
}