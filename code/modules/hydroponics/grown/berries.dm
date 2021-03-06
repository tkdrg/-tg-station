// Berries
/obj/item/seeds/berry
	name = "pack of berry seeds"
	desc = "These seeds grow into berry bushes."
	icon_state = "seed-berry"
	species = "berry"
	plantname = "Berry Bush"
	product = /obj/item/weapon/reagent_containers/food/snacks/grown/berries
	lifespan = 20
	maturation = 5
	production = 5
	yield = 2
	mutatelist = list(/obj/item/seeds/berry/glow, /obj/item/seeds/berry/poison)

/obj/item/weapon/reagent_containers/food/snacks/grown/berries
	seed = /obj/item/seeds/berry
	name = "bunch of berries"
	desc = "Nutritious!"
	icon_state = "berrypile"
	gender = PLURAL
	filling_color = "#FF00FF"
	reagents_add = list("vitamin" = 0.04, "nutriment" = 0.1)
	bitesize_mod = 2

// Poison Berries
/obj/item/seeds/berry/poison
	name = "pack of poison-berry seeds"
	desc = "These seeds grow into poison-berry bushes."
	icon_state = "seed-poisonberry"
	species = "poisonberry"
	plantname = "Poison-Berry Bush"
	product = /obj/item/weapon/reagent_containers/food/snacks/grown/berries/poison
	mutatelist = list(/obj/item/seeds/berry/death)
	rarity = 10 // Mildly poisonous berries are common in reality

/obj/item/weapon/reagent_containers/food/snacks/grown/berries/poison
	seed = /obj/item/seeds/berry/poison
	name = "bunch of poison-berries"
	desc = "Taste so good, you could die!"
	icon_state = "poisonberrypile"
	filling_color = "#C71585"
	reagents_add = list("toxin" = 0.25, "vitamin" = 0.04, "nutriment" = 0.1)

// Death Berries
/obj/item/seeds/berry/death
	name = "pack of death-berry seeds"
	desc = "These seeds grow into death berries."
	icon_state = "seed-deathberry"
	species = "deathberry"
	plantname = "Death Berry Bush"
	product = /obj/item/weapon/reagent_containers/food/snacks/grown/berries/death
	lifespan = 30
	potency = 50
	mutatelist = list()
	rarity = 30

/obj/item/weapon/reagent_containers/food/snacks/grown/berries/death
	seed = /obj/item/seeds/berry/death
	name = "bunch of death-berries"
	desc = "Taste so good, you could die!"
	icon_state = "deathberrypile"
	filling_color = "#708090"
	reagents_add = list("lexorin" = 0.25, "toxin" = 0.35, "vitamin" = 0.04, "nutriment" = 0.1)

// Glow Berries
/obj/item/seeds/berry/glow
	name = "pack of glow-berry seeds"
	desc = "These seeds grow into glow-berry bushes."
	icon_state = "seed-glowberry"
	species = "glowberry"
	plantname = "Glow-Berry Bush"
	product = /obj/item/weapon/reagent_containers/food/snacks/grown/berries/glow
	lifespan = 30
	endurance = 25
	mutatelist = list()
	rarity = 20

/obj/item/weapon/reagent_containers/food/snacks/grown/berries/glow
	seed = /obj/item/seeds/berry/glow
	name = "bunch of glow-berries"
	desc = "Nutritious!"
	var/on = 1
	var/brightness_on = 2 //luminosity when on
	icon_state = "glowberrypile"
	filling_color = "#7CFC00"
	reagents_add = list("uranium" = 0.25, "vitamin" = 0.04, "nutriment" = 0.1)

/obj/item/weapon/reagent_containers/food/snacks/grown/berries/glow/Destroy()
	if(istype(loc,/mob))
		loc.AddLuminosity(round(-potency / 5))
	return ..()

/obj/item/weapon/reagent_containers/food/snacks/grown/berries/glow/pickup(mob/user)
	..()
	src.SetLuminosity(0)
	user.AddLuminosity(round(potency / 5))

/obj/item/weapon/reagent_containers/food/snacks/grown/berries/glow/dropped(mob/user)
	..()
	user.AddLuminosity(round(-potency / 5))
	src.SetLuminosity(round(potency / 5))


// Cherries
/obj/item/seeds/cherry
	name = "pack of cherry pits"
	desc = "Careful not to crack a tooth on one... That'd be the pits."
	icon_state = "seed-cherry"
	species = "cherry"
	plantname = "Cherry Tree"
	product = /obj/item/weapon/reagent_containers/food/snacks/grown/cherries
	lifespan = 35
	endurance = 35
	maturation = 5
	production = 5
	growthstages = 5
	mutatelist = list(/obj/item/seeds/cherry/blue)

/obj/item/weapon/reagent_containers/food/snacks/grown/cherries
	seed = /obj/item/seeds/cherry
	name = "cherries"
	desc = "Great for toppings!"
	icon_state = "cherry"
	gender = PLURAL
	filling_color = "#FF0000"
	reagents_add = list("nutriment" = 0.07, "sugar" = 0.07)
	bitesize_mod = 2

// Blue Cherries
/obj/item/seeds/cherry/blue
	name = "pack of blue cherry pits"
	desc = "The blue kind of cherries"
	icon_state = "seed-bluecherry"
	species = "bluecherry"
	plantname = "Blue Cherry Tree"
	product = /obj/item/weapon/reagent_containers/food/snacks/grown/bluecherries
	mutatelist = list()
	rarity = 10

/obj/item/weapon/reagent_containers/food/snacks/grown/bluecherries
	seed = /obj/item/seeds/cherry/blue
	name = "blue cherries"
	desc = "They're cherries that are blue."
	icon_state = "bluecherry"
	filling_color = "#6495ED"
	reagents_add = list("nutriment" = 0.07, "sugar" = 0.07)
	bitesize_mod = 2


// Grapes
/obj/item/seeds/grape
	name = "pack of grape seeds"
	desc = "These seeds grow into grape vines."
	icon_state = "seed-grapes"
	species = "grape"
	plantname = "Grape Vine"
	product = /obj/item/weapon/reagent_containers/food/snacks/grown/grapes
	lifespan = 50
	endurance = 25
	maturation = 3
	production = 5
	yield = 4
	growthstages = 2
	mutatelist = list(/obj/item/seeds/grape/green)

/obj/item/weapon/reagent_containers/food/snacks/grown/grapes
	seed = /obj/item/seeds/grape
	name = "bunch of grapes"
	desc = "Nutritious!"
	icon_state = "grapes"
	dried_type = /obj/item/weapon/reagent_containers/food/snacks/no_raisin
	filling_color = "#FF1493"
	reagents_add = list("vitamin" = 0.04, "nutriment" = 0.1, "sugar" = 0.1)
	bitesize_mod = 2

// Green Grapes
/obj/item/seeds/grape/green
	name = "pack of green grape seeds"
	desc = "These seeds grow into green-grape vines."
	icon_state = "seed-greengrapes"
	species = "greengrape"
	plantname = "Green-Grape Vine"
	product = /obj/item/weapon/reagent_containers/food/snacks/grown/grapes/green
	// No rarity: technically it's a beneficial mutant, but it's not exactly "new"...
	mutatelist = list()

/obj/item/weapon/reagent_containers/food/snacks/grown/grapes/green
	seed = /obj/item/seeds/grape/green
	name = "bunch of green grapes"
	icon_state = "greengrapes"
	filling_color = "#7FFF00"
	reagents_add = list("salglu_solution" = 0.25, "vitamin" = 0.04, "nutriment" = 0.1, "sugar" = 0.1)