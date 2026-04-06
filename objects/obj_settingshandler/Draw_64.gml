if room == rm_settings
{
	draw_set_font(global.font_pizzafont)
	draw_set_halign(fa_center)
	draw_set_alpha(1)
	var middle_x = room_width / 2
	draw_text_wiggle(middle_x, 50, 1, "SOME SETTINGS FOR YOUR TROUBLES!!")
	if setting_text != ""
		text_alpha = min(text_alpha + 0.1, 1)
	else
	{
		text_alpha = max(text_alpha - 0.15, 0)
		if text_alpha == 0
		{
			text_prior = ""
			subtext_prior = ""
		}
	}
	draw_set_alpha(text_alpha)
	draw_set_font(global.font_pizzafont_small)
	if setting_text != ""
	{
		draw_text(middle_x, (room_height / 2) + 110, setting_text)
		draw_text(middle_x, (room_height / 2) + 150, setting_subtext)
	}
	else if text_prior != ""
	{
		draw_text(middle_x, (room_height / 2) + 110, text_prior)
		draw_text(middle_x, (room_height / 2) + 150, subtext_prior)
	}
	draw_set_alpha(1)
	if !back_selected
		draw_set_font(global.font_pizzafont)
	else
		draw_set_font(global.font_pizzafont_selected)
	draw_text_wiggle(middle_x, back_y, 1, "RETURN TO PATTING ZONE")
}