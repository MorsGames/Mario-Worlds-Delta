/// @description Walk as usual

//Deny, if stomped
if (sprite_index == stompsprite) then exit;

//Set speed based on direction
hspeed = xscale;

//Animate
image_speed = 0.15;
sprite_index = spr_beachkoopa_blue_walk;

//Stop kick
kicky = 0;

