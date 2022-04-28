/// @description Start moving

//If the player does not exist or it's to the left
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = -1;
else
    hspeed = 1;
    
//If the player does not exist or it's below
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.y < y)
    vspeed = -1;
else
    vspeed = 1;

