/// @description Lightning strike

// Ignore if the player is dead
if (instance_exists(obj_player_dead))
	exit;

// Generate
alarm[0] = 100+random(round(200));
instance_create(0, 0, obj_lightningsheet);

