/// @description Move towards the player

if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = -0.5;
else
    hspeed = 0.5;

