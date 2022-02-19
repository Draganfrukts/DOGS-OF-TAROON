/obj/item/melee/energy/sword/kelzad
	name = "Bonitinho"
	desc = "A highly dangerous device manufactured by a dumbass scientist used specifically for slicing onions."
	icon = 'modular_septic/icons/obj/items/melee/transforming_energy.dmi'
	base_icon_state = "kelzad"
	icon_state = "kelzad"
	lefthand_file = 'modular_septic/icons/mob/inhands/sword_lefthand.dmi'
	righthand_file = 'modular_septic/icons/mob/inhands/sword_righthand.dmi'
	inhand_icon_state = "kelzad"
	active_force = 40
	active_hitsound = list('modular_septic/sound/weapons/kelzad1.wav', 'modular_septic/sound/weapons/kelzad2.wav')
	stealthy_audio = FALSE
	light_color = COLOR_BLUE

/obj/item/melee/energy/sword/kelzad/on_transform(obj/item/source, mob/user, active)
	SIGNAL_HANDLER

	blade_active = active
	if(active)
		if(sword_color_icon)
			icon_state = "[icon_state]_[sword_color_icon]"
		if(embedding)
			updateEmbedding()
		heat = active_heat
		START_PROCESSING(SSobj, src)
	else
		if(embedding)
			disableEmbedding()
		heat = initial(heat)
		STOP_PROCESSING(SSobj, src)

	balloon_alert(user, "[name] [active ? "enabled":"disabled"]")
	playsound(user ? user : src, active ? 'modular_septic/sound/weapons/kelzadon.wav' : 'modular_septic/sound/weapons/kelzadoff.ogg', 60, TRUE)
	set_light_on(active)
	return COMPONENT_NO_DEFAULT_MESSAGE
