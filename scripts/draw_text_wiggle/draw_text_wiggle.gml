function draw_text_wiggle(arg0, arg1, arg2, arg3, arg4 = false, arg5 = false)
{
	randomize()
	var wigglex = random_range(-arg2, arg2)
	var wiggley = random_range(-arg2, arg2)
	if (((global.gamepaused && !arg4) || arg5) || !global.setting_shakytext)
	{
		wigglex = 0
		wiggley = 0
	}
	draw_text(arg0 + wigglex, arg1 + wiggley, arg3)
}