function init_scores()
{
	global.highscore_pats = 0
	global.highscore_punches = 0
	global.highscore_kills = 0
	if os_isnotbrowser()
	{
		ini_open("save_data")
		if ini_section_exists("highscores")
		{
			global.highscore_pats = ini_read_real("highscores", "pats", 0)
			global.highscore_punches = ini_read_real("highscores", "global.punches", 0)
			global.highscore_kills = ini_read_real("highscores", "kills", 0)
		}
		ini_close()
	}
}