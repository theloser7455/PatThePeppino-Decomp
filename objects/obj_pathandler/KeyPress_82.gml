if global.gamepaused
	exit
if !instance_exists(obj_fadein) && room == rm_patzone
{
	instance_create_depth(0, 0, -999, obj_fadein, { hoptoroom: true, roomtohopto: room })
	global.patcount = 0
	global.punches = 0
	global.kills = 0
}