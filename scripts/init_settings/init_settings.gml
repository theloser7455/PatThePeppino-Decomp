function init_settings()
{
	global.setting_playmusic = true
	global.setting_playsfx = true
	global.setting_playvoices = true
	global.setting_fullscreen = false
	global.setting_shakytext = true
	if os_isnotbrowser()
	{
		ini_open("save_data")
		if ini_section_exists("settings")
		{
			global.setting_playmusic = ini_read_real("settings", "global.setting_playmusic", true)
			global.setting_playsfx = ini_read_real("settings", "global.setting_playsfx", true)
			global.setting_playvoices = ini_read_real("settings", "global.setting_playvoices", true)
			global.setting_fullscreen = ini_read_real("settings", "global.setting_fullscreen", false)
			global.setting_shakytext = ini_read_real("settings", "global.setting_shakytext", true)
		}
		ini_close()
	}
}