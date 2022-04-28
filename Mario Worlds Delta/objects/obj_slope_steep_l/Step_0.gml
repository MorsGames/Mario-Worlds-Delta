/// @description Check if the player is on this slope and slow him down

with (obj_playerparent) {

    if (collision_rectangle(x-2, bbox_bottom-1, x+2, bbox_bottom+1, other.id, 1, 0))
    && (boostme == 0)
    && (sliding == false)
    && (state != statetype.jump)
    && (state != statetype.climb) {
    
        //If action 2 is held
        if (input_check(input.action1)) && (hspeed < -1)        
            
        //Otherwise, if not held
        || (!input_check(input.action1)) && (hspeed < -0.5)
            hspeed += 0.1;
    }
}

