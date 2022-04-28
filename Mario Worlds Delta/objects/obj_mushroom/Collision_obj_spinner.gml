/// @description Bump the item

//If moving down
if (vspeed >= 0) {

    //Set the vertical speed
    vspeed = -5;
    
    //If the object does not have permission to mov    
    if (x+sprite_width/2 > other.x+sprite_width/2)
        hspeed = 1;
    else
        hspeed = -1;
}

