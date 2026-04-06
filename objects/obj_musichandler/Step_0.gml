var cantplay = array_hasvar(room, no_music_rooms)
if !cantplay && global.setting_playmusic
{
	if !music_isplaying()
	{
		music_cooldown--
		if music_cooldown <= 0
		{
			music_cooldown = music_cooldown_max
			random_set_seed(irandom(99999999))
			var all_music = audio_group_get_assets(sfx_noiseidle6)
			audio_play_sound(all_music[irandom(array_length(all_music) - 1)], 0, false)
			show_debug_message(all_music)
		}
	}
}
else if os_isnotbrowser()
	audio_group_stop_all(audiogroup_music)
else if music_isplaying()
	audio_stop_all()