direction = 90
gravity = 0.35
random_set_seed(irandom(9000000000000))
sprite_index = return_random_array([spr_peppinonorm, spr_noids, spr_pepper, spr_vigi])
image_xscale = random_range(0.2, 0.4)
image_yscale = image_xscale
depth = irandom(-100)
x = choose(random_range(20, 260), random_range(room_width - 260, room_width - 20))
y = 0 - sprite_height
land_y = random_range(185, 445)