/obj/item/gun/ballistic/automatic/remis
	worn_icon = 'modular_septic/icons/obj/items/guns/worn/back.dmi'
	equip_sound = 'modular_septic/sound/weapons/guns/weap_away.ogg'
	drop_sound = 'modular_septic/sound/weapons/guns/drop_mediumgun.wav'
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	rack_sound_vary = FALSE
	suppressed = SUPPRESSED_NONE
	load_sound_vary = FALSE
	eject_sound_vary = FALSE
	mag_display = TRUE
	mag_display_ammo = FALSE
	empty_indicator = FALSE
	empty_icon_state = TRUE
	wielded_inhand_state = TRUE
	weapon_weight = WEAPON_HEAVY
	inhand_x_dimension = 32
	inhand_y_dimension = 32
	skill_melee = SKILL_IMPACT_WEAPON_TWOHANDED
	skill_ranged = SKILL_RIFLE
	w_class = WEIGHT_CLASS_BULKY
	tetris_width = 128
	tetris_height = 64

// Killer-49
/obj/item/gun/ballistic/automatic/remis/winter
	name = "\improper Custom 'Juicy Fruit' SLV-277 optimized CQB self-defense tactical insertion carbine"
	desc = "An outdated civilian skeletonized SLV-277 rifle that has been tailor-made for a high-speed low-drag operator. It once belonged to a citizen of the US, made obvious by a patch.\
	The patch reads 'ELEMENTARY SCHOOL HALLWAY MONITOR ASSAULT UNIT' with a blue-lined skull in the center. Latin below reads, 'PRIMUM EXCEDERE. / NOVISSIME INTRARE.' \
	These are my people... This is my land..."
	icon = 'modular_septic/icons/obj/items/guns/48x32.dmi'
	lefthand_file = 'modular_septic/icons/obj/items/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_septic/icons/obj/items/guns/inhands/rifle_righthand.dmi'
	worn_icon_state = "inverno"
	inhand_icon_state = "inverno"
	icon_state = "inverno"
	base_icon_state = "inverno"
	mag_type = /obj/item/ammo_box/magazine/a556winter
	fire_delay = 1.85
	burst_size = 3
	empty_icon_state = FALSE
	bolt_type = BOLT_TYPE_LOCKING
	load_sound = 'modular_septic/sound/weapons/guns/rifle/mmagin.wav'
	load_empty_sound = 'modular_septic/sound/weapons/guns/rifle/mmagin.wav'
	eject_sound = 'modular_septic/sound/weapons/guns/rifle/mmagout.wav'
	eject_empty_sound = 'modular_septic/sound/weapons/guns/rifle/mmagout.wav'
	safety_off_sound = 'modular_septic/sound/weapons/guns/rifle/msafety.wav'
	safety_on_sound = 'modular_septic/sound/weapons/guns/rifle/msafety.wav'
	rack_sound = 'modular_septic/sound/weapons/guns/rifle/mrack.wav'
	lock_back_sound = 'modular_septic/sound/weapons/guns/rifle/mlockback.ogg'
	bolt_drop_sound = 'modular_septic/sound/weapons/guns/rifle/mlockin.ogg'
	force = 14
	custom_price = 45000
	carry_weight = 3 KILOGRAMS
	can_unsuppress = TRUE
	suppressor_x_offset = 2

	recoil_animation_information = list(
		"recoil_angle_upper" = -15, \
		"recoil_angle_lower" = -25, \
	)
	client_recoil_animation_information = list(
		"strength" = 0.2,
		"duration" = 1,
	)

/obj/item/gun/ballistic/automatic/remis/winter/Initialize(mapload)
	. = ..()
	var/obj/item/suppressor/S = new(src)
	install_suppressor(S)

/obj/item/gun/ballistic/automatic/remis/winter/pickup(mob/user)
	. = ..()
	user.client?.give_award(/datum/award/achievement/misc/nkiller, user)

//Darkworld Gun

//donator gun
/obj/item/gun/ballistic/automatic/remis/abyss/donator
	name = "\improper AN-95 5.4539mm Abyss Armaments Paypig Assault Rifle"
	mag_type = /obj/item/ammo_box/magazine/a545/donator
	worn_icon_state = "goldonov"
	inhand_icon_state = "goldonov"
	icon_state = "goldonov"
	base_icon_state = "goldonov"
	fire_sound = 'modular_septic/sound/weapons/guns/rifle/goldonov.wav'
	suppressed_sound = 'modular_septic/sound/weapons/guns/rifle/goldonov.wav'
	can_unsuppress = FALSE
	suppressor_x_offset = 2

/obj/item/gun/ballistic/automatic/remis/abyss/donator/Initialize(mapload)
	. = ..()
	var/obj/item/suppressor/S = new(src)
	install_suppressor(S)

/obj/item/gun/ballistic/automatic/remis/g11
	name = "\improper Kh11 4.92x34mm Assault Rifle"
	desc = "An almost sci-fi designed rifle with a complex mechanism on the inside. \
	It was rumored in the past that the HRE was making a rifle that could be shot without casings being left behind, this chunky firearm is their sucess story."
	icon = 'modular_septic/icons/obj/items/guns/40x32.dmi'
	lefthand_file = 'modular_septic/icons/obj/items/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_septic/icons/obj/items/guns/inhands/rifle_righthand.dmi'
	inhand_icon_state = "g11"
	icon_state = "g11"
	base_icon_state = "g11"
	mag_type = /obj/item/ammo_box/magazine/a49234g11
	fire_sound = 'modular_septic/sound/weapons/guns/rifle/g11.ogg'
	load_sound = 'modular_septic/sound/weapons/guns/rifle/g11magin.wav'
	load_empty_sound = 'modular_septic/sound/weapons/guns/rifle/g11magin.wav'
	eject_sound = 'modular_septic/sound/weapons/guns/rifle/g11magout.wav'
	eject_empty_sound = 'modular_septic/sound/weapons/guns/rifle/g11magout.wav'
	safety_off_sound = 'modular_septic/sound/weapons/guns/rifle/g11safety2.wav'
	safety_on_sound = 'modular_septic/sound/weapons/guns/rifle/g11safety1.wav'
	rack_sound = 'modular_septic/sound/weapons/guns/rifle/g11rack.wav'
	fireselector_auto = 'modular_septic/sound/weapons/guns/rifle/g11safety2.wav'
	fireselector_burst = 'modular_septic/sound/weapons/guns/rifle/g11safety2.wav'
	fireselector_semi = 'modular_septic/sound/weapons/guns/rifle/g11safety1.wav'
	force = 12
	fire_delay = 0.7
	burst_size = 3
	can_suppress = FALSE
	custom_price = 20000
	gunshot_animation_information = list(
		"pixel_x" = 21, \
		"pixel_y" = -1, \
		"inactive_wben_suppressed" = TRUE, \
	)
	recoil_animation_information = list(
		"recoil_angle_upper" = -10, \
		"recoil_angle_lower" = -20, \
		"recoil_burst_speed" = 0.5, \
		"return_burst_speed" = 0.5, \
	)
	client_recoil_animation_information = list(
		"strength" = 0.3,
		"duration" = 2,
	)

//copypasted just to ensure that we can nuke the casing
/obj/item/gun/ballistic/automatic/remis/g11/handle_chamber(empty_chamber, from_firing, chamber_next_round)
	if((!semi_auto && from_firing) || (bolt_type == BOLT_TYPE_BREAK_ACTION))
		return
	var/obj/item/ammo_casing/casing = chambered //Find chambered round
	if(istype(casing)) //there's a chambered round
		if(QDELING(casing))
			stack_trace("Trying to move a qdeleted casing of type [casing.type]!")
			chambered = null
		else
			//Casing gets ejected and immediately deleted (i couldn't make this casing specific behavior)
			casing.forceMove(drop_location())
			SEND_SIGNAL(casing, COMSIG_CASING_EJECTED)
			if(!casing.loaded_projectile)
				qdel(casing)
			chambered = null
	if(chamber_next_round && (magazine?.max_ammo > 1))
		chamber_round()

/obj/item/gun/ballistic/automatic/remis/steyr
	name = "\improper Selo-Selo ACR Prototype Flechette-Firing Assault Rifle"
	desc = "A unique firearm that practically consists of one large piece with a barrel ran through the whole gun. Fires in steel-SCF Flechettes. \
		If you look hard enough, the entire gun seems to vibrate, and shake. It's almost like It's alive."
	gender = FEMALE
	icon = 'modular_septic/icons/obj/items/guns/48x32.dmi'
	lefthand_file = 'modular_septic/icons/obj/items/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_septic/icons/obj/items/guns/inhands/rifle_righthand.dmi'
	worn_icon_state = "steyr"
	inhand_icon_state = "steyr"
	icon_state = "steyr"
	base_icon_state = "steyr"
	mag_type = /obj/item/ammo_box/magazine/a556steyr
	fire_sound = 'modular_septic/sound/weapons/guns/rifle/steyr.wav'
	suppressed_sound = 'modular_septic/sound/weapons/guns/rifle/steyr_silenced.wav'
	load_sound = 'modular_septic/sound/weapons/guns/rifle/mmagin.wav'
	load_empty_sound = 'modular_septic/sound/weapons/guns/rifle/mmagin.wav'
	eject_sound = 'modular_septic/sound/weapons/guns/rifle/mmagout.wav'
	eject_empty_sound = 'modular_septic/sound/weapons/guns/rifle/mmagout.wav'
	safety_off_sound = 'modular_septic/sound/weapons/guns/rifle/msafety.wav'
	safety_on_sound = 'modular_septic/sound/weapons/guns/rifle/msafety.wav'
	rack_sound = 'modular_septic/sound/weapons/guns/rifle/mrack.wav'
	aim_stress_sound = list('modular_septic/sound/weapons/guns/rifle/voice_steyr/canthide.wav',
						'modular_septic/sound/weapons/guns/rifle/voice_steyr/seeyou.wav',
						'modular_septic/sound/weapons/guns/rifle/voice_steyr/targetacquired.wav',
						'modular_septic/sound/weapons/guns/rifle/voice_steyr/runpig.wav')
	aim_spare_sound = 'modular_septic/sound/weapons/guns/rifle/voice_steyr/spare.wav'
	actions_types = null
	force = 12
	suppressor_x_offset = 8
	can_suppress = TRUE
	verb_say = "passionately whispers"
	gunshot_animation_information = list(
		"pixel_x" = 29, \
		"pixel_y" = 0, \
		"inactive_wben_suppressed" = TRUE, \
	)
	recoil_animation_information = list(
		"recoil_angle_upper" = -10, \
		"recoil_angle_lower" = -20, \
		"recoil_burst_speed" = 0.5, \
		"return_burst_speed" = 0.5, \
	)
	client_recoil_animation_information = list(
		"strength" = 0.1,
		"duration" = 1,
	)
	custom_price = 80000

/obj/item/gun/ballistic/automatic/remis/steyr/Initialize(mapload)
	. = ..()
	RegisterSignal(src, COMSIG_GUNPOINT_GUN_AIM_STRESS_SOUNDED, .proc/aimed_sounding)

/obj/item/gun/ballistic/automatic/remis/steyr/Destroy()
	UnregisterSignal(src, COMSIG_GUNPOINT_GUN_AIM_STRESS_SOUNDED)
	return ..()

/obj/item/gun/ballistic/automatic/remis/steyr/AltClick(mob/user, sounding)
	. = ..()
	var/monologue = "FIX ME!"
	switch(sounding)
		if('modular_septic/sound/weapons/guns/rifle/voice_steyr/cyberpunk.wav')
			monologue = "Cyberpunk is just a soyjack interpretation of the real world."
		if('modular_septic/sound/weapons/guns/rifle/voice_steyr/consequences.wav')
			monologue = "Now you know the consequences of your actions."
		if('modular_septic/sound/weapons/guns/rifle/voice_steyr/thefeds.wav')
			monologue = "I hate the feds."
	if(monologue)
		say(monologue)
	INVOKE_ASYNC(src, .proc/we_do_a_little_shaking)


/obj/item/gun/ballistic/automatic/remis/steyr/proc/aimed_sounding(datum/component/gunpoint/gunpoint, sounding)
	var/voice_line = "FUCK!"
	switch(sounding)
		if('modular_septic/sound/weapons/guns/rifle/voice_steyr/canthide.wav')
			voice_line = "You can't hide."
		if('modular_septic/sound/weapons/guns/rifle/voice_steyr/seeyou.wav')
			voice_line = "I can see you."
		if('modular_septic/sound/weapons/guns/rifle/voice_steyr/targetacquired.wav')
			voice_line = "Target acquired."
		if('modular_septic/sound/weapons/guns/rifle/voice_steyr/runpig.wav')
			voice_line = "Run, pig."
	if(voice_line)
		say(voice_line)
	INVOKE_ASYNC(src, .proc/we_do_a_little_shaking)

/obj/item/gun/ballistic/automatic/remis/steyr/proc/we_do_a_little_shaking(intensity = 4, time_in = 2, time_out = 2, loops = 3)
	for(var/i in 1 to loops)
		animate(src, pixel_x = pixel_x + intensity, time = time_in)
		sleep(time_in)
		animate(src, pixel_x = pixel_x - intensity, time = time_out)
		sleep(time_out)

// 7.62x54R Lampiao sniper-rifle
/obj/item/gun/ballistic/automatic/remis/svd
	name = "\proper 'Poet' self-loading rifle"
	desc = "An Iseurian-made rifle designed to fire Intersol 20x54mm rounds. It performed poorly against the home-grown Strages, but found a niche in colonial and illegal markets. \
	Normally, you'd use vacuum-sealed hot-loaded plasteel-cased airburst 20x54mm APFSDDUHEIS rounds, but you'll have to settle for AP-I. \
	 Has a mount for a standard medium-range scope."
	icon = 'modular_septic/icons/obj/items/guns/64x32.dmi'
	lefthand_file = 'modular_septic/icons/obj/items/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_septic/icons/obj/items/guns/inhands/rifle_righthand.dmi'
	worn_icon_state = "svd"
	inhand_icon_state = "svd"
	icon_state = "svd"
	base_icon_state = "svd"
	mag_type = /obj/item/ammo_box/magazine/a762svd
	actions_types = null
	burst_size = 1
	select = FALSE
	fire_sound = 'modular_septic/sound/weapons/guns/rifle/svd.wav'
	suppressed_sound = 'modular_septic/sound/weapons/guns/rifle/svd_silenced.wav'
	load_sound = 'modular_septic/sound/weapons/guns/rifle/svdmagin.wav'
	load_empty_sound = 'modular_septic/sound/weapons/guns/rifle/svdmagin.wav'
	eject_sound = 'modular_septic/sound/weapons/guns/rifle/svdmagout.wav'
	eject_empty_sound = 'modular_septic/sound/weapons/guns/rifle/svdmagout.wav'
	safety_off_sound = 'modular_septic/sound/weapons/guns/rifle/aksafety2.wav'
	safety_on_sound = 'modular_septic/sound/weapons/guns/rifle/aksafety1.wav'
	rack_sound = 'modular_septic/sound/weapons/guns/rifle/akrack.wav'
	fireselector_auto = 'modular_septic/sound/weapons/guns/rifle/aksafety2.wav'
	fireselector_burst = 'modular_septic/sound/weapons/guns/rifle/aksafety2.wav'
	fireselector_semi = 'modular_septic/sound/weapons/guns/rifle/aksafety1.wav'
	force = 13
	carry_weight = 4 KILOGRAMS
	custom_price = 30000
	recoil = 0.4
	can_suppress = TRUE
	suppressor_x_offset = 6
	suppressor_y_offset = 1
	gunshot_animation_information = list(
		"pixel_x" = 43, \
		"pixel_y" = 2, \
		"inactive_wben_suppressed" = TRUE, \
	)
	recoil_animation_information = list(
		"recoil_angle_upper" = -18, \
		"recoil_angle_lower" = -25, \
	)
	client_recoil_animation_information = list(
		"strength" = 0.5,
		"duration" = 2,
	)

/obj/item/gun/ballistic/rifle/boltaction/remis
	worn_icon = 'modular_septic/icons/obj/items/guns/worn/back.dmi'
	icon = 'modular_septic/icons/obj/items/guns/48x32.dmi'
	lefthand_file = 'modular_septic/icons/obj/items/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_septic/icons/obj/items/guns/inhands/rifle_righthand.dmi'
	equip_sound = 'modular_septic/sound/weapons/guns/weap_away.ogg'
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_SUITSTORE
	rack_sound_vary = FALSE
	suppressed = SUPPRESSED_NONE
	load_sound_vary = FALSE
	eject_sound_vary = FALSE
	mag_display = FALSE
	mag_display_ammo = FALSE
	empty_indicator = FALSE
	empty_icon_state = FALSE
	wielded_inhand_state = TRUE
	weapon_weight = WEAPON_HEAVY
	w_class = WEIGHT_CLASS_BULKY
	inhand_x_dimension = 32
	inhand_y_dimension = 32
	skill_melee = SKILL_IMPACT_WEAPON_TWOHANDED
	skill_ranged = SKILL_RIFLE
	can_bayonet = FALSE
	can_be_sawn_off = FALSE
	can_jam = FALSE
	safety_flags = NONE
	tetris_width = 32
	tetris_height = 128

/obj/item/gun/ballistic/rifle/boltaction/remis/federson
	name = "\improper 'Icpalli' horseback rifle"
	desc = "A vintage lever action rifle that was commonly carried by statists through the Mexican reconquista of 2074, notoriously used in the execution of \
	Juan Arturo Gregorio Perez-Gonzalez del Monte Santo de las Rosas Carmesíes, the second - who opposed the idea of preventing citizens of then-fractured North California from learning Spanish. Chambered in .458 Vizcacha."
	icon_state = "pedersen"
	base_icon_state = "pedersen"
	inhand_icon_state = "pedersen"
	worn_icon_state = "pedersen"
	fire_sound_volume = 100
	fire_sound = 'modular_septic/sound/weapons/guns/rifle/bolties/federson.wav'
	suppressed_sound = 'modular_septic/sound/weapons/guns/rifle/bolties/federson_silenced.wav'
	rack_sound = 'modular_septic/sound/weapons/guns/rifle/bolties/federson_boltout.wav'
	bolt_drop_sound = 'modular_septic/sound/weapons/guns/rifle/bolties/federson_boltin.wav'
	drop_sound = 'modular_septic/sound/weapons/guns/drop_mediumgun.wav'
	load_sound = list('modular_septic/sound/weapons/guns/rifle/bolties/federson_load1.wav', 'modular_septic/sound/weapons/guns/rifle/bolties/federson_load2.wav', 'modular_septic/sound/weapons/guns/rifle/bolties/federson_load3.wav')
	can_suppress = FALSE
	mag_type = /obj/item/ammo_box/magazine/internal/federson
	rack_delay = 4

//G36
/obj/item/gun/ballistic/automatic/remis/g36
	name = "\improper Perdedor 5.56 Void International Assault Rifle"
	desc = "A sort-of melty, sort-of chocolately 5.56 assault rifle that has the appearance of something that would be easily churned and poured over toast or seafood."
	icon = 'modular_septic/icons/obj/items/guns/64x32.dmi'
	lefthand_file = 'modular_septic/icons/obj/items/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_septic/icons/obj/items/guns/inhands/rifle_righthand.dmi'
	worn_icon_state = "g36"
	inhand_icon_state = "g36"
	icon_state = "g36"
	base_icon_state = "g36"
	mag_type = /obj/item/ammo_box/magazine/a556g36
	fire_sound = 'modular_septic/sound/weapons/guns/rifle/g36.ogg'
	suppressed_sound = 'modular_septic/sound/weapons/guns/rifle/g36_suppressed.ogg'
	load_sound = list('modular_septic/sound/weapons/guns/rifle/g36_magin1.ogg', 'modular_septic/sound/weapons/guns/rifle/g36_magin2.ogg')
	load_empty_sound = list('modular_septic/sound/weapons/guns/rifle/g36_magin1.ogg', 'modular_septic/sound/weapons/guns/rifle/g36_magin2.ogg')
	eject_sound = 'modular_septic/sound/weapons/guns/rifle/g36_magout.ogg'
	eject_empty_sound = 'modular_septic/sound/weapons/guns/rifle/g36_magout.ogg'
	safety_off_sound = 'modular_septic/sound/weapons/guns/rifle/msafety.wav'
	safety_on_sound = 'modular_septic/sound/weapons/guns/rifle/msafety.wav'
	rack_sound = 'modular_septic/sound/weapons/guns/smg/thump_rack.wav'
	fireselector_auto = 'modular_septic/sound/weapons/guns/rifle/msafety.wav'
	fireselector_burst = 'modular_septic/sound/weapons/guns/rifle/msafety.wav'
	fireselector_semi = 'modular_septic/sound/weapons/guns/rifle/msafety.wav'
	fold_open_sound = 'modular_septic/sound/weapons/guns/rifle/g36_fold.ogg'
	fold_close_sound = 'modular_septic/sound/weapons/guns/rifle/g36_unfold.ogg'
	force = 18
	fire_delay = 1.5
	burst_size = 3
	can_suppress = TRUE
	gunshot_animation_information = list(
		"pixel_x" = 36, \
		"pixel_y" = 3, \
		"inactive_wben_suppressed" = TRUE, \
	)
	recoil_animation_information = list(
		"recoil_angle_upper" = -10, \
		"recoil_angle_lower" = -20, \
	)
	client_recoil_animation_information = list(
		"strength" = 0.18,
		"duration" = 1,
	)
	custom_price = 30000
	w_class = WEIGHT_CLASS_BULKY
	mag_display_ammo = TRUE
	full_auto = TRUE
	foldable = TRUE
	folded = FALSE

// DOGS OF TAROON CONTENT GOES HERE

/obj/item/gun/ballistic/automatic/remis/abyss
	name = "\improper AC-96/2 'Abakan' infantry rifle"
	desc = "A rare rifle adopted by the Taroonian Royal Operations Group (العمليات الملكية). It was designed as a replacement for the outdated Kazurov family. An internal pulley system improves accuracy and creates a hyperburst effect. \
		The muzzle brake can be removed, allowing the use of a suppressor should you find one."
	icon = 'modular_septic/icons/obj/items/guns/48x32.dmi'
	lefthand_file = 'modular_septic/icons/obj/items/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_septic/icons/obj/items/guns/inhands/rifle_righthand.dmi'
	worn_icon_state = "nikonov"
	inhand_icon_state = "nikonov"
	icon_state = "nikonov"
	base_icon_state = "nikonov"
	mag_type = /obj/item/ammo_box/magazine/a545
	fire_sound = 'modular_septic/sound/weapons/guns/rifle/ak.wav'
	suppressed_sound = 'modular_septic/sound/weapons/guns/rifle/ak_silenced.wav'
	load_sound = 'modular_septic/sound/weapons/guns/rifle/akmagin.wav'
	load_empty_sound = 'modular_septic/sound/weapons/guns/rifle/akmagin.wav'
	eject_sound = 'modular_septic/sound/weapons/guns/rifle/akmagout.wav'
	eject_empty_sound = 'modular_septic/sound/weapons/guns/rifle/akmagout.wav'
	safety_off_sound = 'modular_septic/sound/weapons/guns/rifle/aksafety2.wav'
	safety_on_sound = 'modular_septic/sound/weapons/guns/rifle/aksafety1.wav'
	rack_sound = 'modular_septic/sound/weapons/guns/rifle/akrack.wav'
	fireselector_auto = 'modular_septic/sound/weapons/guns/rifle/aksafety2.wav'
	fireselector_burst = 'modular_septic/sound/weapons/guns/rifle/aksafety2.wav'
	fireselector_semi = 'modular_septic/sound/weapons/guns/rifle/aksafety1.wav'
	fold_open_sound = 'modular_septic/sound/weapons/guns/rifle/ak_stock_open.wav'
	fold_close_sound = 'modular_septic/sound/weapons/guns/rifle/ak_stock_close.wav'
	force = 16
	fire_delay = 1
	burst_size = 2
	can_suppress = TRUE
	suppressor_x_offset = 0
	gunshot_animation_information = list(
		"pixel_x" = 32, \
		"pixel_y" = 3, \
		"inactive_wben_suppressed" = TRUE, \
	)
	recoil_animation_information = list(
		"recoil_angle_upper" = -10, \
		"recoil_angle_lower" = -20, \
	)
	client_recoil_animation_information = list(
		"strength" = 0.2,
		"duration" = 1,
	)
	custom_price = 30000
	w_class = WEIGHT_CLASS_BULKY
	full_auto = FALSE
	foldable = TRUE
	folded = FALSE

/obj/item/gun/ballistic/automatic/remis/abyss/ak74
	name = "\improper Kazurov KARMF-74 infantry rifle"
	desc = "A quintessential part of Taroon's military and law enforcement armories. Kazurov's Automatic Rifle, Modern, Foldable, Model 2474. \
	A gas-operated infantry rifle capable of fully automatic fire, cheap and reliable."
	icon = 'modular_septic/icons/obj/items/guns/48x32.dmi'
	lefthand_file = 'modular_septic/icons/obj/items/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_septic/icons/obj/items/guns/inhands/rifle_righthand.dmi'
	worn_icon_state = "nikonov"
	inhand_icon_state = "nikonov"
	icon_state = "afghan"
	base_icon_state = "afghan"
	fire_delay = 2
	burst_size = 3
	can_suppress = FALSE
	full_auto = TRUE

/obj/item/gun/ballistic/automatic/remis/abyss/ak74/ukoroch
	name = "\improper Kazurov KARMF-74C carbine"
	desc = "A shortened version of the KARMF-74 infantry rifle designed for tank crews, special police units, and close quarters combat. Kazurov's Automatic Rifle, Modern, Foldable, Model 2474, Compact. \
	It's not about size. It's how you use it!"
	icon_state = "krink"
	base_icon_state = "krink"
	fire_delay = 1.5

/obj/item/gun/ballistic/automatic/remis/abyss/ak74/ukoroch/coalition
	name = "\improper Kazurov KARMF-74CM spec-ops carbine"
	desc = "A modification of the KARMF-74C carbine specialty-made for the units that make up the Eastern Taroonian Coalition. Kazurov's Automatic Rifle, Modern, Foldable, Model 2474, Compact, Marsh environments. \
	Can be fitted with a suppressor, which will let you make use of an additional foregrip. The stock must be unfolded manually."
	icon_state = "mec"
	base_icon_state = "mec"
	fire_delay = 1.4
	can_suppress = TRUE
	folded = TRUE

/obj/item/gun/ballistic/automatic/remis/abyss/akm
	name = "\improper Kazurov KARM infantry rifle"
	desc = "An outdated infantry rifle, firing an even more outdated cartridge. Phased out centuries ago by the TAF and NHPD, but remains in use by criminals, freedom fighters, and army reserves. Kazurov's Automatic Rifle, Modern. \
	Chambered in 7.62mm Taroonian, which does more damage to flesh but performs poorly against armor."
	icon = 'modular_septic/icons/obj/items/guns/48x32.dmi'
	lefthand_file = 'modular_septic/icons/obj/items/guns/inhands/rifle_lefthand.dmi'
	righthand_file = 'modular_septic/icons/obj/items/guns/inhands/rifle_righthand.dmi'
	worn_icon_state = "nikonov"
	inhand_icon_state = "nikonov"
	icon_state = "akms"
	base_icon_state = "akms"
	fire_delay = 3
	burst_size = 3
	can_suppress = FALSE
	full_auto = TRUE
	foldable = TRUE
	mag_type = /obj/item/ammo_box/magazine/tarun
	force = 20

/obj/item/gun/ballistic/automatic/remis/abyss/akm/elysium
	name = "\improper Al-Jamahir KARMA infantry rifle"
	desc = "A modernized Kazurov infantry rifle put together by a rebel cell, with heavier-duty parts and a special mini-computer mounted on the gas block - complete with a smart-sight. Kazurov's Automatic Rifle, Modern, Airburst. \
	Karma. What goes around, comes around."
	icon_state = "elysium"
	base_icon_state = "elysium"
	foldable = FALSE
