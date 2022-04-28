/// @description Move towards the player

//If not moving
if (hspeed == 0) {

    //If the player does not exist or it's at the left.
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -1;
    else
        hspeed = 1;
}

//Move towards the player
alarm[11] = 60;

//Turn into a holdable bomb and detonate
alarm[0] = 312;

