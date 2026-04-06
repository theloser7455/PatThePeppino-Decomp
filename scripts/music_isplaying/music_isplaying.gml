function music_isplaying()
{
	var all_tracks = audio_group_get_assets(sfx_noiseidle6)
	for (var a = 0; a <= (array_length(all_tracks) - 1); a += 1)
	{
		if audio_is_playing(all_tracks[a])
			return true;
	}
	return false;
}