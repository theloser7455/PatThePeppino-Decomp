if global.gamepaused
{
	image_speed = 0
	exit
}
else
	image_speed = 1
random_set_seed(irandom(2343245345))
switch state
{
	case states.idle:
		plushstate_idle()
		break
	case states.squish:
		plushstate_squish()
		break
	case states.dead:
		plushstate_dead()
		break
}
if mouse_check_button_pressed(mb_middle) || keyboard_check_pressed(ord("C")) && tangible
{
	if instance_exists(obj_taunteffect)
		instance_destroy(obj_taunteffect)
	instance_create_depth(x, y, depth + 1, obj_taunteffect)
	character += 1
	if character > character_max
		character = 0
	mask_index = plush_data[character][0][0]
	plush_sfx()
}
if cangrav
	vsp = min(vsp + gravpull, gravmax)
if y < 50
	vsp += gravpull
if y > land_y && cangrav
{
	state = states.squish
	y = land_y
	vsp = 0
	image_index = 0
	cangrav = false
}
y += vsp