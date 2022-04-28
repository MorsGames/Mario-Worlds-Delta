/// @description Move towards the player

if (hspeed == 0) {

    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -1;
    else
        hspeed = 1;
}

