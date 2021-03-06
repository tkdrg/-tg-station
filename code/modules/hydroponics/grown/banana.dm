// Banana
/obj/item/seeds/banana
	name = "pack of banana seeds"
	desc = "They're seeds that grow into banana trees. When grown, keep away from clown."
	icon_state = "seed-banana"
	species = "banana"
	plantname = "Banana Tree"
	product = /obj/item/weapon/reagent_containers/food/snacks/grown/banana
	lifespan = 50
	endurance = 30
	mutatelist = list(/obj/item/seeds/banana/mime, /obj/item/seeds/banana/bluespace)

/obj/item/weapon/reagent_containers/food/snacks/grown/banana
	seed = /obj/item/seeds/banana
	name = "banana"
	desc = "It's an excellent prop for a clown."
	icon = 'icons/obj/items.dmi'
	icon_state = "banana"
	item_state = "banana"
	trash = /obj/item/weapon/grown/bananapeel
	filling_color = "#FFFF00"
	reagents_add = list("banana" = 0.1, "vitamin" = 0.04, "nutriment" = 0.02)
	bitesize = 5

/obj/item/weapon/reagent_containers/food/snacks/grown/banana/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is aiming the [src.name] at themself! It looks like \he's trying to commit suicide.</span>")
	playsound(loc, 'sound/items/bikehorn.ogg', 50, 1, -1)
	sleep(25)
	if(!user)
		return (OXYLOSS)
	user.say("BANG!")
	sleep(25)
	if(!user)
		return (OXYLOSS)
	user.visible_message("<B>[user]</B> laughs so hard they begin to suffocate!")
	return (OXYLOSS)


// Mimana
/obj/item/seeds/banana/mime
	name = "pack of mimana seeds"
	desc = "They're seeds that grow into mimana trees. When grown, keep away from mime."
	icon_state = "seed-mimana"
	species = "mimana"
	plantname = "Mimana Tree"
	product = /obj/item/weapon/reagent_containers/food/snacks/grown/banana/mime
	mutatelist = list()
	rarity = 15

/obj/item/weapon/reagent_containers/food/snacks/grown/banana/mime
	seed = /obj/item/seeds/banana/mime
	name = "mimana"
	desc = "It's an excellent prop for a mime."
	icon_state = "mimana"
	trash = /obj/item/weapon/grown/bananapeel/mimanapeel
	filling_color = "#FFFFEE"
	reagents_add = list("nothing" = 0.1, "mutetoxin" = 0.1, "nutriment" = 0.02)


// Bluespace Banana
/obj/item/seeds/banana/bluespace
	name = "pack of bluespace banana seeds"
	desc = "They're seeds that grow into bluespace banana trees. When grown, keep away from bluespace clown."
	icon_state = "seed-banana-blue"
	species = "bluespacebanana"
	plantname = "Bluespace Banana Tree"
	product = /obj/item/weapon/reagent_containers/food/snacks/grown/banana/bluespace
	mutatelist = list()
	rarity = 30

/obj/item/weapon/reagent_containers/food/snacks/grown/banana/bluespace
	seed = /obj/item/seeds/banana/bluespace
	name = "bluespace banana"
	icon_state = "banana_blue"
	trash = /obj/item/weapon/grown/bananapeel/bluespace
	filling_color = "#0000FF"
	origin_tech = "bluespace=3"
	reagents_add = list("singulo" = 0.2, "banana" = 0.1, "vitamin" = 0.04, "nutriment" = 0.02)




// Banana Peels
/obj/item/weapon/grown/bananapeel
	name = "banana peel"
	desc = "A peel from a banana."
	icon = 'icons/obj/items.dmi'
	icon_state = "banana_peel"
	item_state = "banana_peel"
	w_class = 1
	throwforce = 0
	throw_speed = 3
	throw_range = 7

/obj/item/weapon/grown/bananapeel/suicide_act(mob/user)
	user.visible_message("<span class='suicide'>[user] is deliberately slipping on the [src.name]! It looks like \he's trying to commit suicide.</span>")
	playsound(loc, 'sound/misc/slip.ogg', 50, 1, -1)
	return (BRUTELOSS)

/obj/item/weapon/grown/bananapeel/Crossed(AM as mob|obj)
	if (istype(AM, /mob/living/carbon))
		var/mob/living/carbon/M = AM
		var/stun = Clamp(potency / 10, 1, 10)
		var/weaken = Clamp(potency / 20, 0.5, 5)
		M.slip(stun, weaken, src)
		return 1

/obj/item/weapon/grown/bananapeel/bluespace
	name = "bluespace banana peel"
	desc = "A peel from a bluespace banana."
	icon = 'icons/obj/hydroponics/harvest.dmi'
	icon_state = "banana_peel_blue"
	origin_tech = "bluespace=3"

/obj/item/weapon/grown/bananapeel/bluespace/Crossed(AM)
	if(..())
		var/teleport_radius = potency / 10
		do_teleport(AM, get_turf(AM), teleport_radius)
		AM << "<span class='notice'>You slip through spacetime!</span>"
		if(prob(50))
			do_teleport(src, get_turf(src), teleport_radius)
		else
			qdel(src)

/obj/item/weapon/grown/bananapeel/specialpeel     //used by /obj/item/clothing/shoes/clown_shoes/banana_shoes
	name = "synthesized banana peel"
	desc = "A synthetic banana peel."

/obj/item/weapon/grown/bananapeel/specialpeel/Crossed(AM)
	if(..())
		qdel(src)

/obj/item/weapon/grown/bananapeel/mimanapeel
	name = "mimana peel"
	desc = "A mimana peel."
	icon = 'icons/obj/hydroponics/harvest.dmi'
	icon_state = "mimana_peel"