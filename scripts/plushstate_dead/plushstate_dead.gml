function plushstate_dead()
{
	tangible = false
	if image_alpha != 0
	{
		image_alpha = 0
		random_set_seed(irandom(99999))
		audio_play_sound(return_random_array(deathsounds), 0, false, global.setting_playvoices)
		instance_create_depth(x, y, depth, obj_plush_dead, { sprite_index: plush_data[character][0][2] })
		bottom_text(plush_data[character][2], 200)
	}
}