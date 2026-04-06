var mouse_on = place_meeting(x, y, obj_mousecursor)
if mouse_on
{
	image_index = 1
	x_index = 1
	switch sprite_index
	{
		case spr_setting_music:
			obj_settingshandler.setting_text = "PLAY MUSIC"
			obj_settingshandler.setting_subtext = "TOGGLE MUSIC PLAYING IN THE BACKGROUND."
			break
		case spr_setting_sfx:
			obj_settingshandler.setting_text = "PLAY SOUND EFFECTS"
			obj_settingshandler.setting_subtext = "TOGGLE SOUND EFFECTS LIKE THE PAT AND PUNCH."
			break
		case spr_setting_voices:
			obj_settingshandler.setting_text = "TALKING PLUSHIES"
			obj_settingshandler.setting_subtext = "TOGGLE PLUSHIES TALKING IN THE PATZONE."
			break
		case spr_setting_fullscreen:
			obj_settingshandler.setting_text = "FULLSCREEN (DESKTOP ONLY)"
			obj_settingshandler.setting_subtext = "THIS CAN ALSO BE DONE AT\nANY TIME WITH THE F KEY!"
			break
		case spr_setting_shakytext:
			obj_settingshandler.setting_text = "SHAKY TEXT"
			obj_settingshandler.setting_subtext = "TOGGLES SOME TEXT SHAKING RAPIDLY.\nDISABLE IF ITS HARD TO READ!"
			break
	}
	if mouse_check_button_pressed(mb_left)
	{
		switch sprite_index
		{
			case spr_setting_music:
				global.setting_playmusic = flip_bool(global.setting_playmusic)
				obj_musichandler.music_cooldown = 0
				break
			case spr_setting_sfx:
				global.setting_playsfx = flip_bool(global.setting_playsfx)
				audio_play_sound(sfx_hurtgeneral, 0, false, global.setting_playsfx)
				break
			case spr_setting_voices:
				global.setting_playvoices = flip_bool(global.setting_playvoices)
				audio_play_sound(sfx_pepidle1, 0, false, global.setting_playvoices)
				break
			case spr_setting_fullscreen:
				global.setting_fullscreen = flip_bool(global.setting_fullscreen)
				break
			case spr_setting_shakytext:
				global.setting_shakytext = flip_bool(global.setting_shakytext)
				break
		}
		if os_isnotbrowser()
			settings_savetocomputer()
	}
}
else
{
	image_index = 0
	x_index = 0
}
if sprite_index == spr_setting_fullscreen && !os_isnotbrowser()
	image_index = 2