/// @description Blargg when it's jumping

//Animate
image_speed = 0.05;

//Facing direction
xscale = 1;

//Set vertical speed
vspeed = -3;
gravity = 0.12;

//Move towards the player
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = -0.75;
else
    hspeed = 0.75;

