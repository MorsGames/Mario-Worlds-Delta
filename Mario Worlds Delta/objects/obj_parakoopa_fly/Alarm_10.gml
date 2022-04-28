/// @description Start moving

//Set the vertical speed
vspeed = 0.5;

//Set the horizontal movement
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = -0.5;
else
    hspeed = 0.5;

