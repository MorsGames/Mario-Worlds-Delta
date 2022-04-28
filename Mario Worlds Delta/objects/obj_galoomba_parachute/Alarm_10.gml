/// @description Move towards the player

if (hspeed == 0) {

    //If the player does not exist or it is at the left
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x) {
    
        //Move to the left
        hspeed = random_range(0, -0.5);
        xscale = -1;
    }
    
    //Otherwise, if the player is at the right
    else {
    
        hspeed = random_range(0, 0.5);
        xscale = 1;
    }
}

