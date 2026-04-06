if audio_group_is_loaded(audiogroup_default) && audio_group_is_loaded(audiogroup_music)
	loaded = true
if loaded
{
	delay--
	if delay <= 0
	{
		text_alpha -= 0.025
		if text_alpha <= 0
			room = destination
	}
	if quick_load
		room = destination
}