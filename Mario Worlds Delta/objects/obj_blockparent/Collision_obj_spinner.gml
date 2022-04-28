/// @description Bump the block

//If the block can be hit
if (ready == 0) {

    //Begin bump sequence
    vspeed = -2.25;
    alarm[0] = 4;
    
    //Block is hit
    ready = 1;
    
    //Perform block events
    event_user(0);
}

