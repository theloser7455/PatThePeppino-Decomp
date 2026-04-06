function bottom_text(arg0, arg1, arg2 = 0, arg3 = 1)
{
	with obj_bottomtexthandler
	{
		textinhand = arg0
		wiggleness = arg3
		duration = arg1
		offsety = arg2
		refresh = true
	}
}