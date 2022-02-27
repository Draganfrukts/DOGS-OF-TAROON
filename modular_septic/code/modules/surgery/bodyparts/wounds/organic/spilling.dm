/// Spilling wounds
/datum/wound/spill
	name = "Spill"
	sound_effect = 'modular_septic/sound/gore/spill.ogg'
	severity = WOUND_SEVERITY_CRITICAL

	wound_type = WOUND_SPILL
	wound_flags = WOUND_SOUND_HINTS

/// Brain spill
/datum/wound/spill/brain
	name = "Brain Spill"
	viable_zones = list(BODY_ZONE_HEAD)
	severity = WOUND_SEVERITY_CRITICAL
	sound_effect = 'modular_septic/sound/gore/spill.ogg'
	threshold_minimum = 120

/datum/wound/spill/brain/can_afflict(obj/item/bodypart/new_limb, datum/wound/old_wound)
	. = ..()
	if(!.)
		return
	// Bro where the brain at
	if(!new_limb.getorganslot(ORGAN_SLOT_BRAIN))
		return FALSE
	// We need the bone to be just completely FUCKED
	if((new_limb.getorganslotefficiency(ORGAN_SLOT_BONE) > 0) || !new_limb.is_compound_fractured())
		return FALSE
	// Limb is already spilled
	if(new_limb.spilled)
		return FALSE
	// Limb not mangled
	if(new_limb.get_mangled_state() != BODYPART_MANGLED_BOTH)
		return FALSE
	var/gaping_wound = FALSE
	for(var/datum/injury/injury as anything in new_limb.injuries)
		if(injury.get_bleed_rate() && (injury.damage_per_injury() >= 25))
			gaping_wound = TRUE
			break
	// No sufficiently open wound
	if(!gaping_wound)
		return FALSE

/datum/wound/spill/brain/apply_wound(obj/item/bodypart/new_limb, silent, datum/wound/old_wound, smited, add_descriptive)
	. = ..()
	if(!.)
		return
	if(victim)
		if(sound_effect)
			playsound(new_limb.owner, pick(sound_effect), 100, TRUE)
		if(add_descriptive)
			SEND_SIGNAL(victim, COMSIG_CARBON_ADD_TO_WOUND_MESSAGE, span_dead(span_big(" The brain is spilled!")))
	new_limb.spilled = TRUE
	INVOKE_ASYNC(src, .proc/debrain_animation, victim)
	qdel(src)

/datum/wound/spill/brain/proc/debrain_animation(mob/living/carbon/debrained)
	var/image/debraining_overlay = image('modular_septic/icons/mob/human/overlays/gore.dmi', "brain_bust")
	debrained.overlays += debraining_overlay
	sleep(0.5 SECONDS)
	if(QDELETED(debrained))
		return
	debrained.overlays -= debraining_overlay
	debrained.update_damage_overlays()
	var/obj/item/organ/brain/mushy_pea_brain = debrained.getorganslot(ORGAN_SLOT_BRAIN)
	if(!mushy_pea_brain)
		return
	mushy_pea_brain.Remove(mushy_pea_brain.owner, FALSE, FALSE)
	if(QDELETED(mushy_pea_brain))
		return
	mushy_pea_brain.forceMove(debrained.drop_location())
	mushy_pea_brain.plane = initial(mushy_pea_brain.plane)
	mushy_pea_brain.throw_at(get_step(mushy_pea_brain, pick(GLOB.alldirs)), 1, 1, spin = FALSE)
	animate(mushy_pea_brain, transform = mushy_pea_brain.transform.Scale(1, 0.65), time = 1 SECONDS, easing = ELASTIC_EASING | EASE_IN | EASE_OUT)
	sleep(1 SECONDS)
	if(QDELETED(mushy_pea_brain))
		return
	if(mushy_pea_brain.icon_state == "brain")
		mushy_pea_brain.icon_state = "brain-mushed"
		mushy_pea_brain.transform = mushy_pea_brain.transform.Scale(1, 1/0.65)
		mushy_pea_brain.name = "mushy [mushy_pea_brain.name]"
		mushy_pea_brain.desc += "\n"
		mushy_pea_brain.desc += span_dead("<u>[mushy_pea_brain] has seen better days...</u>")

/// Gut spill
/datum/wound/spill/gut
	name = "Gut Spill"
	viable_zones = list(BODY_ZONE_PRECISE_VITALS)
	severity = WOUND_SEVERITY_CRITICAL
	sound_effect = 'modular_septic/sound/gore/spill.ogg'
	threshold_minimum = 90

/datum/wound/spill/gut/can_afflict(obj/item/bodypart/new_limb, datum/wound/old_wound)
	. = ..()
	if(!.)
		return
	// Bro where the gut at
	if(!new_limb.getorganslot(ORGAN_SLOT_INTESTINES))
		return FALSE
	// Limb is already spilled
	if(new_limb.spilled)
		return FALSE
	// Limb not mangled
	if(new_limb.get_mangled_state() != BODYPART_MANGLED_BOTH)
		return FALSE
	var/gaping_wound = FALSE
	for(var/datum/injury/injury as anything in new_limb.injuries)
		if(injury.get_bleed_rate() && (injury.damage_per_injury() >= 30))
			gaping_wound = TRUE
			break
	// No sufficiently open wound
	if(!gaping_wound)
		return FALSE

/datum/wound/spill/gut/apply_wound(obj/item/bodypart/new_limb, silent, datum/wound/old_wound, smited, add_descriptive)
	. = ..()
	if(!.)
		return
	if(victim)
		if(sound_effect)
			playsound(new_limb.owner, pick(sound_effect), 100, TRUE)
		if(add_descriptive)
			SEND_SIGNAL(victim, COMSIG_CARBON_ADD_TO_WOUND_MESSAGE, span_flashingdanger(span_big(" The guts are spilled!")))
	new_limb.spilled = TRUE
	victim.update_damage_overlays()
	for(var/obj/item/grab/grabber in new_limb.grasped_by)
		grabber.update_grab_mode()
	qdel(src)
