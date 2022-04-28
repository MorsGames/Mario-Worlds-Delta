/// @description Pick a ball

//If the player does not exist or is nearby
if (!instance_exists(obj_playerparent))
|| (gravity > 0)
|| (myball != noone)
|| ((obj_playerparent.x > x-32) && (obj_playerparent.x < x+32)) {

    alarm[0] = 1;
    exit;
}

//Set the throwing sprite
sprite_index = spr_spike_throw;

//Animate
image_speed = 0.1;
image_index = 0;

//Stop
hspeed = 0;

