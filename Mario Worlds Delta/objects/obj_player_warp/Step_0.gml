/// @description Exit from the pipe

//If the player can exit the pipe
if (ready == 1) {

    //If there's not a solid overlapping
    if (!collision_point(x-8, bbox_top, obj_solid, 0, 0))
    && (!collision_point(x+7, bbox_top, obj_solid, 0, 0))
    && (!collision_point(x-8, bbox_bottom, obj_solid, 0, 0))
    && (!collision_point(x+7, bbox_bottom, obj_solid, 0, 0)) {
    
        //Create a new player object...
        with (player_create(x, y)) {
                
            xscale = other.image_xscale;
            isflashing = other.isflashing;
        }
        
        //...and destroy this object
        instance_destroy();
    }
}

//If the player can move
if (canmove == 1) {
    
    //Set speed
    if ((direction == 90) || (direction == 270))
        speed = 1;
    else
        speed = 0.5;
}

//Set facing direction
if (hspeed > 0)
    image_xscale = 1;
else if (hspeed < 0)
    image_xscale = -1;

