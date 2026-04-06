function progress_save()
{
	ini_open("save_data")
	ini_write_real("progress", "gun_unlocked", global.gun_unlocked)
	ini_close()
}
