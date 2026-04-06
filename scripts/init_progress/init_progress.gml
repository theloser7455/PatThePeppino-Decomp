function init_progress()
{
	global.gun_unlocked = false
	if os_isnotbrowser()
	{
		ini_open("save_data")
		if ini_section_exists("progress")
			global.gun_unlocked = ini_read_real("progress", "gun_unlocked", false)
		ini_close()
	}
}