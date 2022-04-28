/// @description Start moving

//If the player does not exist or it's at the left
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    dir = -1;
else
    dir = 1;

