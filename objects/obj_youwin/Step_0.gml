if pause <= 0
{
	cs_state_timer++
	switch cs_state
	{
		case 0:
			bottom_text("HEY", 200)
			move_along_cutscene(0, 200)
			break
		case 1:
			bottom_text("YOU MIGHT WONDER WHY YOURE HERE", 250)
			move_along_cutscene(0, 250)
			break
		case 2:
			bottom_text("WELL THATS BECAUSE..", 150)
			move_along_cutscene(0, 150)
			break
		case 3:
			if !audio_is_playing(msc_epicwin)
				audio_play_sound(msc_epicwin, 0, false)
			bottom_text("YOU REACHED 1000 PATS!", 200)
			move_along_cutscene(0, 200)
			break
		case 4:
			bottom_text("I CONGRATULATE YOU!", 200)
			move_along_cutscene(0, 200)
			break
		case 5:
			bottom_text("THANK YOU FOR PLAYING..", 200)
			move_along_cutscene(0, 200)
			break
		case 6:
			bottom_text("PAT THE PEPPINO!!!!", 300)
			move_along_cutscene(0, 300)
			break
		case 7:
			bottom_text("BUT BEFORE YOU GO BACK TO PATTING", 200)
			move_along_cutscene(0, 200)
			break
		case 8:
			bottom_text("YOUVE UNLOCKED SOMETHING SPECIAL!", 200)
			move_along_cutscene(0, 200)
			break
		case 9:
			bottom_text("A NEW HAND FORM!", 200)
			move_along_cutscene(0, 200)
			break
		case 10:
			bottom_text("TRY IT IF YOU WANT TO!", 200)
			move_along_cutscene(0, 200)
			break
		case 11:
			bottom_text("BUT ALRIGHT, STAY FRESH PLAYER!", 200)
			move_along_cutscene(0, 200)
			break
		case 12:
			bottom_text("YOU ARE A SUPER PATTER!!!", 200)
			move_along_cutscene(0, 200)
			break
		case 13:
			scr_fadein(true, rm_patzone)
			break
	}
}
else
	pause--
if cs_state > 3
{
	if !instance_exists(obj_jumpyplushie)
	{
		repeat 9
			instance_create_depth(0, 0, 0, obj_jumpyplushie)
	}
}