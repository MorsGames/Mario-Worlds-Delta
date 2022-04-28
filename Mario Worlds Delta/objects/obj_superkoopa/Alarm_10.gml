/// @description Move towards the player

//Jump again
alarm[1] = 30;

//If the player does not exist or it is at the left   
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = -1.75;
else
    hspeed = 1.75;

