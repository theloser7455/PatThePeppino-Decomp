if global.gamepaused
	exit
image_alpha += fadein
if image_alpha >= 1
{
	if hoptoroom
	{
		room = roomtohopto
		obj_bottomtexthandler.textinhand = ""
		exit
	}
	instance_destroy()
}