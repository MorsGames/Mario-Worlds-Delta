/// @description Prepare a ball

//If the chuck hp is full
if (hp == 3) {
    
    //If the player does exist...
    if (instance_exists(obj_playerparent)) {
    
        //Draw the ball
        ready = 1;
        
        //Generate it
        alarm[1] = 30;
    }
    else
        alarm[0] = 1;
}
else
    event_inherited();

