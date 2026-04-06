draw_self()
var draw_x = false
switch sprite_index
{
	case spr_setting_music:
		draw_x = !global.setting_playmusic
		break
	case spr_setting_sfx:
		draw_x = !global.setting_playsfx
		break
	case spr_setting_voices:
		draw_x = !global.setting_playvoices
		break
	case spr_setting_fullscreen:
		draw_x = !global.setting_fullscreen && os_isnotbrowser()
		break
	case spr_setting_shakytext:
		draw_x = !global.setting_shakytext
		break
}
if draw_x
	draw_sprite(spr_setting_disabled, x_index, x, y)