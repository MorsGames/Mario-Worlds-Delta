/// @description Detect the player and move towards it

//If not moving
if (hspeed == 0) {
    
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -0.5;
    else
        hspeed = 0.5;
}

