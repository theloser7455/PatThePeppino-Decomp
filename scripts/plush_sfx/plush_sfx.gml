function plush_sfx()
{
	idlesounds = []
	hurtsounds = []
	deathsounds = []
	switch obj_plush.character
	{
		case 0:
			idlesounds = [sfx_pepidle1, sfx_pepidle2, sfx_pepidle3, sfx_pepidle4]
			hurtsounds = [sfx_pepouch1, sfx_pepouch2]
			deathsounds = [sfx_pepdeath1, sfx_pepdeath2, sfx_pepdeath3, sfx_pepdeath4]
			break
		case 1:
			idlesounds = [sfx_noiseidle1, sfx_noiseidle2, sfx_noiseidle3, sfx_noiseidle4, sfx_noiseidle5, sfx_noiseidle6, sfx_noiseidle7]
			hurtsounds = idlesounds
			deathsounds = [sfx_noisedeath]
			break
		case 2:
			idlesounds = [sfx_pepperidle1, sfx_pepperidle2, sfx_pepperscared]
			hurtsounds = [sfx_pepperscared]
			deathsounds = [sfx_pepperdead1, sfx_pepperdead2]
			break
		case 3:
			idlesounds = [sfx_vigi1, sfx_vigi2, sfx_vigi3]
			hurtsounds = idlesounds
			deathsounds = [sfx_vigidead]
			break
		case 4:
			idlesounds = [sfx_gustavo_idle_1, sfx_gustavo_idle_2, sfx_gustavo_idle_3]
			hurtsounds = [sfx_gustavo_hurt_1, sfx_gustavo_hurt_2, sfx_gustavo_hurt_3]
			deathsounds = [sfx_gustavo_death_1, sfx_gustavo_death_2, sfx_gustavo_death_3]
			break
		case 5:
			idlesounds = [sfx_quiet]
			hurtsounds = idlesounds
			deathsounds = [sfx_AAAAAAAAAAAA]
			break
		case 6:
			idlesounds = [sfx_pizzahead_1, sfx_pizzahead_2]
			hurtsounds = idlesounds
			deathsounds = [sfx_pizzahead_death_1, sfx_pizzahead_death_2, sfx_pizzahead_death_3]
			break
	}
}