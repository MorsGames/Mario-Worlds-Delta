/// @description Move up if the player is not nearby

//If the player exists
if (instance_exists(obj_playerparent)) {
    
    //Move up
    vspeed = -2;
    
    //Stop moving
    alarm[1] = 16;
}

//Otherwise
else {

    alarm[0] = 1;
    exit;
}

