/atom/movable/screen/plane_master/rendering_plate/game_world
	render_target = RENDER_PLANE_GAME_RENDER_TARGET
	render_relay_plane = RENDER_PLANE_GAME_PRE_PROCESSING

/atom/movable/screen/plane_master/rendering_plate/non_game
	render_relay_plane = RENDER_PLANE_NON_GAME_POST_PROCESSING

// ~this is used to handle chromatic aberration
/atom/movable/screen/plane_master/rendering_plate/game_world_pre_processing
	name = "game pre-processing rendering plate"
	plane = RENDER_PLANE_GAME_PRE_PROCESSING
	render_relay_plane = RENDER_PLANE_GAME_POST_PROCESSING

/atom/movable/screen/plane_master/rendering_plate/game_world_pre_processing/Initialize(mapload)
	. = ..()
	add_filter("black", 1, layering_filter(render_source = RENDER_PLANE_GAME_RENDER_TARGET, color = "#000000"))
	add_filter("red", 2, layering_filter(render_source = RENDER_PLANE_GAME_RENDER_TARGET, color = "#FF000001", x = 0.5, y = 0.5))
	add_filter("green", 3, layering_filter(render_source = RENDER_PLANE_GAME_RENDER_TARGET, color = "#00FF0001", x = 0, y = 0))
	add_filter("blue", 4, layering_filter(render_source = RENDER_PLANE_GAME_RENDER_TARGET, color = "#0000FF01", x = -0.5, y = -0.5))

// ~these plates come in to apply post processing just before the master plate
/atom/movable/screen/plane_master/rendering_plate/game_world_post_processing
	name = "game post-processing rendering plate"
	plane = RENDER_PLANE_GAME_POST_PROCESSING
	render_relay_plane = RENDER_PLANE_MASTER

/atom/movable/screen/plane_master/rendering_plate/non_game_post_processing
	name = "non-game post-processing rendering plate"
	plane = RENDER_PLANE_NON_GAME_POST_PROCESSING
	render_relay_plane = RENDER_PLANE_MASTER
