/obj/Initialize(mapload)
	. = ..()
	if(isnull(min_force))
		min_force = force

/obj/on_rammed(mob/living/carbon/rammer)
	rammer.ram_stun()
	var/smash_sound = pick('modular_septic/sound/gore/smash1.ogg',
						'modular_septic/sound/gore/smash2.ogg',
						'modular_septic/sound/gore/smash3.ogg')
	playsound(src, smash_sound, 80)
	rammer.sound_hint()
	sound_hint()
	take_damage(GET_MOB_ATTRIBUTE_VALUE(rammer, STAT_STRENGTH))

/// This returns the damage for a given attack with this object
/obj/proc/get_force(mob/living/user)
	var/final_force = rand(min_force, force)
	final_force += strength_force_minimum
	final_force += (strength_force_maximum * GET_MOB_ATTRIBUTE_VALUE(user, STAT_STRENGTH)/ATTRIBUTE_MASTER)

	return max(0, final_force)
