function animationend()
{
	return image_index + image_speed * sprite_get_speed(sprite_index) / sprite_get_speed_type(sprite_index) == 1 ? 1 : game_get_speed(gamespeed_fps) >= image_number;
}