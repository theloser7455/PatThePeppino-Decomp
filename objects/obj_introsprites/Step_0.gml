image_alpha = 0
if greater_and_lessthan(obj_intro.timepassed, 180, 480)
{
	sprite_index = spr_scruff
	image_alpha = 1
	if global.setting_playmusic
	{
		if !playsfx1
		{
			audio_play_sound(sfx_yayo, 0, false)
			playsfx1 = true
		}
	}
}