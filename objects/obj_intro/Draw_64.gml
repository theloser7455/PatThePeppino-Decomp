if pause <= 0
{
	cs_state_timer++
	switch cs_state
	{
		case 0:
			draw_text_wiggle(room_width / 2, 120, 1, "A PIZZA TOWER FANGAME BY", false, false)
			move_along_cutscene(120, 0)
			break
		case 1:
			draw_text_wiggle(room_width / 2, 120, 1, "A PIZZA TOWER FANGAME BY", false, false)
			draw_text_wiggle(room_width / 2, room_height / 2, 1, "SCRUFFTUNA", false, false)
			index_time++
			if index_time >= 20
			{
				index_time = 0
				index++
				if index > 3
					index = 0
			}
			draw_sprite(spr_scruff, index, room_width / 2, room_height - 100)
			if !cool
			{
				cool = true
				audio_play_sound(sfx_yayo, 0, false, global.setting_playsfx)
			}
			move_along_cutscene(240, 0)
			break
		case 2:
			if !os_isnotbrowser()
				room = rm_disclaimer
			else
				room = rm_title
			break
	}
}
else
	pause--