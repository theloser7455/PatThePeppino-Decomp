function scr_fadein(arg0, arg1)
{
	if !instance_exists(obj_fadein)
		instance_create_depth(0, 0, -999, obj_fadein, { hoptoroom: arg0, roomtohopto: arg1 })
}