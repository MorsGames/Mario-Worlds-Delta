/// @description Start moving

//Set the vertical speed
vspeed = 0.25;

//Set the horizontal speed
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = -1.5;
else
    hspeed = 1.5;

