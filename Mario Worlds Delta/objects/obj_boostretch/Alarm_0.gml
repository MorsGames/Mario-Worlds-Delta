/// @description Start moving

//Stop moving
alarm[1] = 120;

//If the boo didn't moved before, move towards the player
if (prevhspeed == 0) {

    //If the player does not exist or it's moving left
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -1;
    else
        hspeed = 1;
}

//Otherwise, set the previously set horizontal speed
else
    hspeed = prevhspeed;

