if global.gamepaused || room == rm_patzone
	exit
obj_bottomtexthandler.textinhand = ""
var roomtime = 0
switch room
{
	case rm_title:
	case rm_theinstructions:
	case rm_settings:
		roomtime = rm_patzone
		break
	case rm_disclaimer:
		roomtime = rm_title
		break
	case rm_intro:
		if os_isnotbrowser()
			roomtime = rm_title
		else
			roomtime = rm_disclaimer
		break
}
scr_fadein(true, roomtime)