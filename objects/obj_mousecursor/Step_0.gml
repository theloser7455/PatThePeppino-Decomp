x = mouse_x
y = mouse_y
image_index = mouse_check_button(mb_left)
unmoving = instance_exists(obj_fadein)
if room == rm_settings
{
	if !place_meeting(x, y, obj_settingbutton)
	{
		with obj_settingshandler
		{
			if setting_text != ""
			{
				text_prior = setting_text
				subtext_prior = setting_subtext
				setting_text = ""
				setting_subtext = ""
			}
		}
	}
}