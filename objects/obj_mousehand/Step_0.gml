if global.gamepaused
	exit
if global.gun_unlocked
	handform_max = 2
else
	handform_max = 1
if instance_exists(obj_mousecursor)
{
	vis_on = false
	image_alpha = 0
}
else
{
	vis_on = true
	image_alpha = 1
}
x = mouse_x
y = mouse_y
if mouse_check_button_pressed(mb_right) && obj_plush.tangible && !instance_exists(obj_mousecursor)
{
	handform += 1
	if handform > handform_max
		handform = 0
	var _toshow = 0
	switch handform
	{
		case 0:
			_toshow = "PATTING TIME!"
			sprite_index = spr_helpinghand
			break
		case 1:
			_toshow = "PUNCHIN TIME!"
			sprite_index = spr_hurtinghand
			break
		case 2:
			_toshow = "SHOOTING TIME!!!"
			sprite_index = spr_handwithafuckinggun
			break
	}
	bottom_text(_toshow, 60)
}
if !place_meeting(x, y, obj_plush)
	alreadytouching = false
if handform == 2 && vis_on
{
	if mouse_check_button_pressed(mb_left)
	{
		var y_ = y - 83
		instance_create_depth(bbox_right, y_, depth, obj_fuckasspeppinobullet)
		instance_create_depth(bbox_right, y_, depth - 1, obj_kapow)
		audio_play_sound(sfx_gun_shoot, 0, false, global.setting_playsfx)
	}
}