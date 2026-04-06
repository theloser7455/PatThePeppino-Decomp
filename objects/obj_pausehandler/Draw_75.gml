draw_set_halign(fa_center)
if global.gamepaused
{
	draw_sprite_ext(spr_overlaypixel, image_index, room_width / 2, room_height / 2, 9999, 9999, 0, c_white, 0.75)
	draw_set_font(global.font_pizzafont)
	draw_text_wiggle(room_width / 2, 100, 1, "ARE YOU SURE YOU WANT TO QUIT?", true, false)
	draw_set_font(global.font_pizzafont_small)
	draw_text_wiggle(room_width / 2, 160, 1, "ALTHOUGH YOUR PAT AND PUNCH COUNTERS ARE\nSAVED THROUGH THE HIGH SCORES, MAKE SURE TO\nTAKE SCREENSHOTS OF EM TO IMPRESS\nYOUR FRIENDS!", true, false)
	draw_set_font(global.font_pizzafont)
	draw_text_wiggle(room_width / 2, (room_height / 2) + 20, 1, "PRESS ENTER TO QUIT.", true, false)
	draw_text_wiggle(room_width / 2, (room_height / 2) + 100, 1, "PRESS ESCAPE TO\nGET BACK TO PATTING!", true, false)
	draw_sprite(spr_byebyepep, byeframe, 125, room_height - 250)
	draw_sprite(spr_byebyepep, byeframe, 825, room_height - 250)
}