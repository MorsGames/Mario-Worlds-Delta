/// @description Move towards the player

//Go up
alarm[1] = 2;

//If the player does not exist or it is at the left   
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = -0.5;
else
    hspeed = 0.5;

