var mouse_inradius = point_distance(mouse_x, mouse_y, x, y) <= 100
var mouse_click = mouse_check_button_pressed(mb_left)
if obj_bottomtexthandler.textshown == "" || menu_up
	image_alpha = min(image_alpha + 0.025, 0.75)
else
	image_alpha = max(image_alpha - 0.05, 0.3)
if mouse_inradius
{
	if !instance_exists(obj_mousecursor)
		instance_create_depth(mouse_x, mouse_y, depth, obj_mousecursor)
	else
	{
		selected = place_meeting(x, y, obj_mousecursor)
		if mouse_click && selected
		{
			if !menu_up
				menu_up = true
			else
				menu_up = false
		}
	}
}
else
{
	selected = false
	if !menu_up && instance_exists(obj_mousecursor)
		instance_destroy(obj_mousecursor)
}
if menu_up
	sprite_index = spr_icon_resume
else
	sprite_index = spr_icon_pause
if selected
	image_index = 1
else
	image_index = 0
if menu_up && mouse_click
{
	if menu_selected[0]
		scr_fadein(true, rm_settings)
	else if menu_selected[1]
		scr_fadein(true, rm_theinstructions)
	else if menu_selected[2]
		global.gamepaused = true
}