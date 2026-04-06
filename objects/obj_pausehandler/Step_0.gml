var steambg = layer_get_id("Backgrounds_2")
if global.gamepaused
{
	layer_hspeed(steambg, 0)
	if keyboard_check_pressed(vk_enter)
		game_end()
	waittimer++
	if waittimer >= 20
	{
		waittimer = 0
		if byeframe == 0
			byeframe = 1
		else
			byeframe = 0
	}
}
else
	layer_hspeed(steambg, 1)