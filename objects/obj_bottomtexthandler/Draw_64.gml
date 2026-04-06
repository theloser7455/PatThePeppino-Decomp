if global.gamepaused
	exit
draw_set_font(global.font_pizzafont)
draw_set_halign(fa_center)
if (textshown != textinhand || refresh)
{
	refresh = false
	textshown = textinhand
	textstage = 0
	finaly = finalytrue - offsety
	basey = baseytrue + offsety
	currenty = basey
}
if textshown != ""
{
	switch textstage
	{
		case 0:
			currenty = approach(currenty, finaly, 5)
			if currenty == finaly
				textstage = 1
			break
		case 1:
			duration--
			if duration <= 0
				textstage = 2
			break
		case 2:
			currenty = approach(currenty, basey, 1)
			if currenty == basey
			{
				textshown = ""
				textinhand = ""
			}
			break
	}
	randomize()
	var randx = random_range(-wiggleness, wiggleness)
	var randy = random_range(-wiggleness, wiggleness)
	draw_text(basex + randx, currenty + randy, textshown)
}