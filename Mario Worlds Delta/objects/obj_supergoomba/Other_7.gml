/// @description Jump towards the player

//Set vertical speed
vspeed = -6;

//Boost jump
y--;

//Do not animate
image_speed = 0;
image_index = 0;

//If the player does not exist or it's at the left
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = -1.05;
else
    hspeed = 1.05;

