function move_along_cutscene(arg0, arg1)
{
	if cs_state_timer >= arg0
	{
		cs_state_timer = 0
		cs_state += 1
		if arg1 != 0
			pause = arg1
	}
}