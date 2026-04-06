function music_start()
{
	if !music_isplaying()
	{
		random_set_seed(irandom(99999999))
		var all_music = audio_group_get_assets(sfx_noiseidle6)
		audio_play_sound(all_music[irandom(array_length(all_music) - 1)], 0, false)
	}
}