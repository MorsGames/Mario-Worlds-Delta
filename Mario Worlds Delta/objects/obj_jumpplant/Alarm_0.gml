/// @description Jump up if the player is not nearby

//If the player exists
if (instance_exists(obj_playerparent)) {

    //If the player is nearby
    if (obj_playerparent.x > x-32)
    && (obj_playerparent.x < x+32) {
    
        alarm[0] = 1;
        exit;
    }
    
    //Move up
    vspeed = -2;
}

//Otherwise
else {

    alarm[0] = 1;
    exit;
}

