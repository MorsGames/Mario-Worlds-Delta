/// @description Move towards the player

//If not moving
if (hspeed == 0) {

    //If the player does not exist or it's at the left.
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -0.2;
    else
        hspeed = 0.2;
}

//Move towards the player
alarm[11] = 60;

