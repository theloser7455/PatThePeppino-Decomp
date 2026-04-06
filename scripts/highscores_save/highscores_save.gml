function highscores_save()
{
	if global.patcount > global.highscore_pats
		global.highscore_pats = global.patcount
	if global.punches > global.highscore_punches
		global.highscore_punches = global.punches
	if global.kills > global.highscore_kills
		global.highscore_kills = global.kills
	if os_isnotbrowser()
	{
		ini_open("save_data")
		ini_write_real("highscores", "pats", global.highscore_pats)
		ini_write_real("highscores", "global.punches", global.highscore_punches)
		ini_write_real("highscores", "kills", global.highscore_kills)
		ini_close()
	}
}