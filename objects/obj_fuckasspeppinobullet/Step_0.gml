if state == states.idle
	x += 40
else
{
	random_set_seed(irandom(2343245345))
	if spd == 0
	{
		gravity = random_range(0.2, 1)
		direction = random_range(100, 150)
		speed = random_range(10, 30)
		spd = random_range(-3, -9)
		rot_spd = random_range(-15, -30)
	}
	x += spd
	image_angle += rot_spd
}
if place_meeting(x, y, obj_plush) && !touch
{
	touch = true
	random_set_seed(irandom(2343245345))
	global.kills += 1
	if os_isnotbrowser()
		highscores_save()
	var new_char = irandom(obj_plush.character_max)
	if new_char == obj_plush.character
	{
		new_char = obj_plush.character + 1
		if (new_char > obj_plush.character_max)
			new_char = 0
	}
	if obj_plush.tangible
	{
		state = states.squish
		with obj_plush
		{
			instance_create_depth(x, y, depth - irandom_range(1, 10), obj_plush_dead, { sprite_index: plush_data[character][0][2], speed_amplifier: random_range(10, 20), other_dir: true })
			audio_play_sound(return_random_array(deathsounds), 0, false, global.setting_playvoices)
			character = new_char
			mask_index = plush_data[character][0][0]
			plush_sfx()
		}
	}
}