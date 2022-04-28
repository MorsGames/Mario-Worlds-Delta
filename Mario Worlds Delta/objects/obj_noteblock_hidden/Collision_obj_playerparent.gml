/// @description If the player jumps from below

if (other.vspeed < 0)
&& (other.bbox_top > bbox_bottom+other.vspeed) {

    //Create a new block, give it the same item and bump it
    with (instance_create(x, y, obj_noteblock)) {
    
        //Mark as hit
        ready = 1;
        
        //Set vertical speed
        vspeed = -2.25;
        alarm[0] = 4;
        
        //Hereby item
        sprout = other.sprout;
        
        //Perform block events
        event_user(0);
    }
    
    //Destroy
    instance_destroy();
}

