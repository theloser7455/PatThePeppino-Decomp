function settings_savetocomputer()
{
	ini_open("save_data")
	ini_write_real("settings", "global.setting_playmusic", global.setting_playmusic)
	ini_write_real("settings", "global.setting_playsfx", global.setting_playsfx)
	ini_write_real("settings", "global.setting_playvoices", global.setting_playvoices)
	ini_write_real("settings", "global.setting_fullscreen", global.setting_fullscreen)
	ini_write_real("settings", "global.setting_shakytext", global.setting_shakytext)
	ini_close()
}