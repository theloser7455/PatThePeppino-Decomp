var alpha = 1
if instance_exists(obj_init)
	alpha = obj_init.text_alpha
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, alpha)