if global.gamepaused
	exit
spawntimer++
if spawntimer >= 5
{
	randomize()
	spawntimer = 0
	padding = 35
	var randx = random_range(bbox_left + padding, bbox_right - padding)
	var randy = random_range(bbox_top + padding, bbox_bottom - padding)
	instance_create_depth(randx, randy, depth - 1, obj_hurtstars, { direction: direction + 180 + random_range(-10, 10) })
}