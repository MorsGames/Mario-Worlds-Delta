/// @description Make the player hold or interact with the item.

//If the item is not being held.
if (!held) { 

    //If the player is above and moving down, use the stomp event.
    if (other.bbox_bottom < bbox_top-vspeed+5) 
    && (other.vspeed > 0) {
    
        //Animate
        image_speed = 0.4;
        
        //the player logic
        with (other) {
        
            //Stop horizontal speed.
            hspeed = 0;
            
            //Stop vertical speed.
            vspeed = 0;
            if (gravity > 0)
                gravity = 0;
        }
        
        //Spring is ready
        ready = 1;
        s_ready = 1;
        
        //the player logic (Part 2)
        with (other) event_user(15);
    }
    
    //Otherwise, if the player can hold the item.
    else if (can_hold() 
    && (s_ready == 0) 
    && (inwall == false) 
    && (other.bbox_bottom > bbox_top)) {
        
        //Make the player hold it.
        other.holding = 1;
        
        //Start timer
        if (carried == 0) {
        
            //Timer has started
            carried = 1;
            
            //Set up the timer
            if (time >= 2)
                alarm[1] = (time-2)*60;
            else            
                alarm[1] = 1;
            
            //Destroy
            alarm[2] = time*60;
        }
        
        //Change the depth
        depth = -4;        
        
        //Get held
        held = 1;
                
        //Disable speed / gravity
        speed = 0;
        gravity = 0;
    }
}

//If the spring is ready.
if (ready) {

    //If the player exists
    if (instance_exists(obj_playerparent)) {
    
        //Set player state
        obj_playerparent.state = statetype.idle;
        
        //Disable player gravity
        obj_playerparent.enable_gravity = false;
        
        //Stop jumping / sliding
        obj_playerparent.jumping = 2;
        obj_playerparent.sliding = 0;
        
        //Snap in position
        obj_playerparent.y = ceil(bbox_top+(image_index*2)-16);
    }
}

