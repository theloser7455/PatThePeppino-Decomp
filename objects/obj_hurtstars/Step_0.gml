if global.gamepaused
{
	if speed != 0
	{
		spdsaved = speed
		speed = 0
	}
	exit
}
else if spdsaved != 0
{
	speed = spdsaved
	spdsaved = 0
}
time--
speed = max(speed - 0.25, 0)
if time <= 0
	instance_destroy()