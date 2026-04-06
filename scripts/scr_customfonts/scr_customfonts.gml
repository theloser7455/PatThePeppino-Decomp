function scr_customfonts()
{
	global.font_pizzafont = font_add_sprite_ext(spr_pizzafont, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!?.,:()1234567890&", true, 2)
	global.font_pizzafont_small = font_add_sprite_ext(spr_pizzafontabitsmaller, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!?.,:()1234567890&", true, 2)
	global.font_pizzafont_selected = font_add_sprite_ext(spr_pizzafont_selected, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!?.,:()1234567890&", true, 1)
}