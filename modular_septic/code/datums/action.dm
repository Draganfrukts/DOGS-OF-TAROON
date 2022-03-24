/datum/action
	transparent_when_unavailable = FALSE
	button_icon = 'modular_septic/icons/hud/quake/actions.dmi'
	background_icon_state = "default"
	/// A character can have multiple action tabs in the peeper, this ensures
	var/action_category = ACTIONS_DEFAULT

/datum/action/Grant(mob/granted_to)
	if(granted_to)
		if(owner)
			if(owner == granted_to)
				return
			Remove(owner)
		owner = granted_to
		RegisterSignal(owner, COMSIG_PARENT_QDELETING, .proc/owner_deleted)

		LAZYADD(granted_to.actions, src)
		granted_to.update_action_buttons()
		return
	Remove(owner)
