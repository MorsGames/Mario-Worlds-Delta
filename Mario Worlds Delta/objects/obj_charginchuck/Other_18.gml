/// @description Update facing direction

//If not moving
if (hspeed == 0) {

    //If the player does not exist or it's at the left
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        xscale = -1;
    else
        xscale = 1;    
}

//Otherwise if moving, face towards direction
else
    xscale = 1*sign(hspeed);

