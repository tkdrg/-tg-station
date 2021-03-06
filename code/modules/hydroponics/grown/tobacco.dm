// Tobacco
/obj/item/seeds/tobacco
	name = "pack of tobacco seeds"
	desc = "These seeds grow into tobacco plants."
	icon_state = "seed-tobacco"
	species = "tobacco"
	plantname = "Tobacco Plant"
	product = /obj/item/weapon/reagent_containers/food/snacks/grown/tobacco
	lifespan = 20
	maturation = 5
	production = 5
	oneharvest = 1
	yield = 10
	growthstages = 3
	mutatelist = list(/obj/item/seeds/tobacco/space)

/obj/item/weapon/reagent_containers/food/snacks/grown/tobacco
	seed = /obj/item/seeds/tobacco
	name = "tobacco leaves"
	desc = "Dry them out to make some smokes."
	icon_state = "tobacco_leaves"
	filling_color = "#008000"
	reagents_add = list("nicotine" = 0.03, "nutriment" = 0.03)

// Space Tobacco
/obj/item/seeds/tobacco/space
	name = "pack of space tobacco seeds"
	desc = "These seeds grow into space tobacco plants."
	icon_state = "seed-stobacco"
	species = "stobacco"
	plantname = "Space Tobacco Plant"
	product = /obj/item/weapon/reagent_containers/food/snacks/grown/tobacco/space
	mutatelist = list()
	rarity = 20

/obj/item/weapon/reagent_containers/food/snacks/grown/tobacco/space
	seed = /obj/item/seeds/tobacco/space
	name = "space tobacco leaves"
	desc = "Dry them out to make some space-smokes."
	icon_state = "stobacco_leaves"
	reagents_add = list("salbutamol" = 0.05, "nicotine" = 0.08, "nutriment" = 0.03)