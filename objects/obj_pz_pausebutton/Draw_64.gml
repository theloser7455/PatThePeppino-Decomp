if menu_up
	draw_sprite_ext(spr_overlaypixel, image_index, room_width / 2, room_height / 2, 9999, 9999, 0, c_white, 0.5)
draw_self()
if !menu_up && !global.gamepaused
	exit
draw_set_font(global.font_pizzafont)
draw_set_halign(fa_center)
var middle_x = room_width / 2
draw_text_wiggle(middle_x, 50, 1, "PATTING PAUSED!")
var settings_y = 200
var controls_y = 300
var exit_y = 400
var range = 35
var range_x = point_distance(middle_x, 0, mouse_x, 0) <= 250
menu_selected[0] = point_distance(x, settings_y, x, mouse_y) <= range && range_x
menu_selected[1] = point_distance(x, controls_y, x, mouse_y) <= range && range_x
menu_selected[2] = point_distance(x, exit_y, x, mouse_y) <= range && range_x && os_isnotbrowser()
draw_set_font(global.font_pizzafont)
if menu_selected[0]
	draw_set_font(global.font_pizzafont_selected)
draw_text_wiggle(middle_x, settings_y, 1, "CHECK THE SETTINGS!")
draw_set_font(global.font_pizzafont)
if menu_selected[1]
	draw_set_font(global.font_pizzafont_selected)
draw_text_wiggle(middle_x, controls_y, 1, "SEE THE CONTROLS!")
draw_set_font(global.font_pizzafont)
if menu_selected[2] && os_isnotbrowser()
	draw_set_font(global.font_pizzafont_selected)
if !os_isnotbrowser()
	draw_set_color(c_gray)
draw_text_wiggle(middle_x, exit_y, 1, "EXIT THE GAME!!")
draw_set_color(c_white)
if os_isnotbrowser()
{
	draw_set_font(global.font_pizzafont_small)
	draw_text_wiggle(middle_x, room_height - 75, 1, "TIP: HOLD TAB AT ANY\nTIME TO RESET ALL DATA.")
}