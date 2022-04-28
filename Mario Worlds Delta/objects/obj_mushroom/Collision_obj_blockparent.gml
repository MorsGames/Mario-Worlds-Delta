/// @description Bump the item

//If the block is moving up
if (other.vspeed < 0)
&& (vspeed >= 0)
&& (y < other.bbox_top-11) {
    
    //If the object does not have permission to move
    if (permission == 0) {
    
        permission = 1;
        hspeed = 1;
    }
    
    //Otherwise, reverse horizontal direction
    else {
    
        if (x >= other.x+sprite_width/2)
            hspeed = 1;    
    
        else if (x < other.x+sprite_width/2)
            hspeed = -1;
    }
    
    //Set the vertical speed if there's no solid above
    if (!position_meeting(x, y-8, obj_solid))
        vspeed = -5;
}

