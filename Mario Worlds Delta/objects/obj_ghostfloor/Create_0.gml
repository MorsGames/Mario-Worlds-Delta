/// @description Ghost Floor

//Start moving
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = -1;
else
    hspeed = 1;

