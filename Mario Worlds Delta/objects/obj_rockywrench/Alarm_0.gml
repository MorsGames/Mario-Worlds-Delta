/// @description Come out from the hole

//If the player does not exist, deny this event
if (!instance_exists(obj_playerparent))
    alarm[0] = 1;
    
//Otherwise, move up
else {

    //Set the vertical speed
    vspeed = -0.5;
    
    //Stop
    alarm[1] = 32;
}

