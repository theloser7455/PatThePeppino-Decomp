draw_set_halign(fa_center)
var mid_x = room_width / 2
var mid_y = room_height / 2
draw_sprite(spr_logo, 1, mid_x, 100)
draw_set_font(global.font_pizzafont_small)
draw_text_wiggle(mid_x, mid_y - 60, 1, "A PIZZA TOWER FANGAME\nBY SCRUFFTUNA")
var y_start = mid_y + 20
var y_settings = mid_y + 80
var y_controls = mid_y + 140
var range = 25
var ranged_x = point_distance(mid_x, 0, mouse_x, 0) <= 250
text_selected[0] = point_distance(0, y_start, 0, mouse_y) <= range && ranged_x
text_selected[1] = point_distance(0, y_settings, 0, mouse_y) <= range && ranged_x
text_selected[2] = point_distance(0, y_controls, 0, mouse_y) <= range && ranged_x
draw_set_font(global.font_pizzafont)
if text_selected[0]
	draw_set_font(global.font_pizzafont_selected)
draw_text_wiggle(mid_x, y_start, 1, "START PATTING!")
draw_set_font(global.font_pizzafont)
if text_selected[1]
	draw_set_font(global.font_pizzafont_selected)
draw_text_wiggle(mid_x, y_settings, 1, "CHECK THE SETTINGS!")
draw_set_font(global.font_pizzafont)
if text_selected[2]
	draw_set_font(global.font_pizzafont_selected)
draw_text_wiggle(mid_x, y_controls, 1, "SEE THE CONTROLS!")
draw_set_font(global.font_pizzafont_small)
draw_text_wiggle(room_width / 2, room_height - 60, 1, "CREDIT GOES TO TOUR DE PIZZA, MAIMYMAYO, AND\nDOGTOON64 FOR USED ASSETS AND CHARACTERS.", false)