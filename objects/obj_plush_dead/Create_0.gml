random_set_seed(irandom(912937129318032))
randomize()
if !other_dir
	direction = random_range(65, 89)
else
	direction = random_range(10, 45)
speed = random_range(11, 14) + speed_amplifier
gravity = 0.35
spawntimer = 0