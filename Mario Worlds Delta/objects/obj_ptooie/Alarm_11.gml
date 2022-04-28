/// @description Change direction

if (hspeed != 0) {

    //If the player does not exist or it's at the left
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -0.5;
    else
        hspeed = 0.5;
}

//Repeat the process
alarm[11] = 60 + random(round(60));

