function data_wipe()
{
	global.patcount = 0
	global.punches = 0
	global.kills = 0
	global.highscore_pats = 0
	global.highscore_punches = 0
	global.highscore_kills = 0
	global.setting_playmusic = true
	global.setting_playsfx = true
	global.setting_playvoices = true
	global.setting_fullscreen = false
	global.setting_shakytext = true
	global.gun_unlocked = false
	progress_save()
	highscores_save()
	settings_savetocomputer()
	game_restart()
}