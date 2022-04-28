/// @description Follow the player

//If moving horizontally
if (hspeed != 0) 
&& (gravity == 0) {

    //Start moving
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -0.5;
    else
        hspeed = 0.5;
}

//Change direction
alarm[11] = 60;

