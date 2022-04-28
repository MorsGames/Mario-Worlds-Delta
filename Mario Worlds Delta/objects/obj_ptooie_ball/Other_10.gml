/// @description Kill the ball

//Create dead object
imdead = instance_create(x, y+8, obj_enemy_dead);

//Set the sprite
imdead.sprite_index = spr_spike_ball_ang;

//Set the xscale
imdead.image_xscale = 1;

//Set the vertical speed
imdead.vspeed = vspeed;

//Destroy
instance_destroy();

