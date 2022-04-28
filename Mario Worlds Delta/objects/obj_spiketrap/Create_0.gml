/// @description Spike Trap

//Animate
image_speed = 0.15;

//Turn into a sea-urchin if underwater
if (collision_point(x+8, y+8, obj_swim, 0, 0))
    sprite_index = spr_spiketrap_alt;

