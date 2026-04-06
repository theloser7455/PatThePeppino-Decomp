draw_set_font(global.font_pizzafont)
draw_set_valign(fa_top)
var middle = room_width / 2
switch room
{
	case rm_patzone:
		draw_set_halign(fa_left)
		var pat_text = ""
		switch obj_mousehand.handform
		{
			case 0:
				pat_text = "PATS: " + string(global.patcount)
				break
			case 1:
				if (global.punches < 100)
					pat_text = "PUNCHES: " + string(global.punches)
				else
					pat_text = "PUNCHES: TOO MANY!!!"
				break
			case 2:
				pat_text = "KILLS: " + string(global.kills)
				break
		}
		draw_text(25, 30, pat_text)
		draw_set_font(global.font_pizzafont_small)
		var score_text = ""
		switch obj_mousehand.handform
		{
			case 0:
				score_text = "PAT HIGH SCORE: " + string(global.highscore_pats)
				break
			case 1:
				score_text = "PUNCH HIGH SCORE: " + string(global.highscore_punches)
				break
			case 2:
				score_text = "MOST KILLS AT ONCE: " + string(global.highscore_kills)
				break
		}
		draw_text(25, 70, score_text)
		draw_set_font(global.font_pizzafont)
		if global.patcount % 25 == 0 && global.patcount != 0
		{
			if !celebrated_pat
			{
				celebrated_pat = true
				audio_play_sound(sfx_yayo, 0, false, 0.25 * global.setting_playsfx)
				bottom_text("YOU HAVE PAT " + obj_plush.plush_data[obj_plush.character][1] + " " + string(global.patcount) + " TIMES!", 200)
			}
		}
		else
			celebrated_pat = false
		if global.punches % 20 == 0 && global.punches != 0
		{
			if !celebrated_punch
			{
				celebrated_punch = true
				bottom_text("YOU HAVE HURT " + obj_plush.plush_data[obj_plush.character][1] + " " + string(global.punches) + " TIMES..", 200)
			}
		}
		else
			celebrated_punch = false
		if global.kills % 25 == 0 && global.kills != 0
		{
			if !celebrated_kills
			{
				celebrated_kills = true
				bottom_text("YOU HAVE KILLED " + string(global.kills) + " PLUSHIES!!!", 200)
				audio_play_sound(sfx_yayo, 0, false, 0.25 * global.setting_playsfx)
			}
		}
		else
			celebrated_kills = false
		break
	case rm_theinstructions:
		draw_set_halign(fa_center)
		draw_text_wiggle(middle, 50, 1, "WELCOME TO PAT THE PEPPINO!\nYOUR GOAL IS TO PAT PEPPINO\nAS MUCH AS YOU CAN.", false, false)
		draw_set_font(global.font_pizzafont_small)
		draw_text_wiggle(middle, 160, 1, "BUT BEFORE SO, HERE'S THE CONTROLS!", false, false)
		draw_text_wiggle(middle, (room_height / 2) - 60, 1, "RIGHT CLICK TO SWITCH BETWEEN\nPATTING AND PUNCHING!", false, false)
		draw_text_wiggle(middle, room_height / 2, 1, "MIDDLE CLICK OR PRESS C TO CHANGE CHARACTERS!", false, false)
		draw_text_wiggle(middle, (room_height / 2) + 60, 1, "PRESS R TO RESET THE PATTING ZONE,\nINCLUDING THE PAT AND PUNCH COUNTERS!", false, false)
		draw_text_wiggle(middle, (room_height / 2) + 130, 1, "PRESS ESCAPE TO EXIT THE GAME AT ANY\nTIME! (DESKTOP EXCLUSIVE)", false, false)
		draw_set_alpha(1)
		if !back_selected
			draw_set_font(global.font_pizzafont)
		else
			draw_set_font(global.font_pizzafont_selected)
		draw_text_wiggle(middle, back_y, 1, "RETURN TO PATTING ZONE")
		break
}
if reset_timer > 0
{
	draw_sprite_ext(spr_overlaypixel, 1, 0, 0, 9999, 9999, 0, c_black, reset_timer / 120)
	draw_set_alpha(reset_timer / 120)
	draw_set_halign(fa_center)
	draw_text(middle, room_height / 2, "RESETTING DATA..")
	draw_set_alpha(1)
}