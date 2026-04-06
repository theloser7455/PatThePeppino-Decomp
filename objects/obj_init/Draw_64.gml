draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(global.font_pizzafont)
draw_set_alpha(text_alpha)
if !loaded
	draw_text_wiggle(room_width / 2, room_height / 2, 1, "LOADING...")
else
	draw_text_wiggle(room_width / 2, room_height / 2, 1, "DONE LOADING!")
draw_set_alpha(1)