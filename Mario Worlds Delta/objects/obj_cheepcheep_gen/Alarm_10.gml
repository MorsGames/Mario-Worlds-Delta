/// @description Start moving

//Set the vertical speed
vspeed = -6;
gravity = 0.1;

//Set the horizontal speed
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = -2;
else
    hspeed = 2;

