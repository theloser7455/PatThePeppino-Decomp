random_set_seed(irandom(99999))
if obj_plush.tangible && !alreadytouching && vis_on
{
	alreadytouching = true
	switch handform
	{
		case 0:
			var plush_headbox = collision_rectangle(obj_plush.bbox_left, obj_plush.bbox_top, obj_plush.bbox_right, obj_plush.bbox_top - 30, self, false, false)
			if plush_headbox
			{
				global.patcount += 1
				obj_plush.state = states.squish
				obj_plush.image_index = 0
				if global.setting_playsfx
					audio_play_sound(sfx_squeak, 1, false, 0.75, 0, random_range(0.95, 1.05))
				if chance(0.15) && global.setting_playvoices
				{
					var soundinquestion = return_random_array(obj_plush.idlesounds)
					audio_play_sound(soundinquestion, 0, false)
				}
				if global.patcount == 1000 && !global.gun_unlocked
				{
					room = rm_youwin
					global.gun_unlocked = true
					audio_stop_all()
					progress_save()
					highscores_save()
					exit
				}
			}
			break
		case 1:
			global.punches += 1
			with obj_plush
			{
				hp -= 1
				state = states.squish
				image_index = 0
				vsp = -10
				cangrav = true
				instance_create_depth(x, obj_mousehand.y, depth - 1, obj_hurteffect)
			}
			if global.setting_playsfx
				audio_play_sound(return_random_array(punchsounds), 0, false)
			if obj_plush.hp > 0
			{
				if global.setting_playvoices && chance(0.15)
				{
					var perfect_pepper = obj_plush.character == 2
					var pitch = 1 - (random_range(-0.2, 0.2) * perfect_pepper)
					audio_play_sound(return_random_array(obj_plush.hurtsounds), 0, false, 1, 0, pitch)
				}
			}
			else
				obj_plush.state = states.dead
			break
	}
	highscores_save()
}