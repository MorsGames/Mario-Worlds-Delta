/// @description Make the player interact with the item

//If the player is above and moving down, stomp the trampoline.
if (other.bbox_bottom <= bbox_top-vspeed+5)
&& (other.vspeed > 0) {
    
    //Animate
    image_speed = 0.4;
    
    //Player logic
    with (other) {
    
        //Stop horizontal movement
        hspeed = 0;
        
        //Stop vertical movement
        vspeed = 0;
        if (gravity > 0)
            gravity = 0;
    }
    
    //Trampoline is ready
    ready = 1;
    ready2 = 1;
    
    //Make sure to reset the player variable
    with (other) event_user(15);
}

//If the spring is ready
if (ready) {

    //With the player
    with (obj_playerparent) {
    
        state = statetype.idle;
        disablegrav = 1;
        jumping = 2;
        sliding = 0;
    }
    
    //Set y position
    obj_playerparent.y = self.y+(image_index*3)-14;
}

