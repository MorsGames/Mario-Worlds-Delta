/// @description Held item logic

//If the item is not being held
if (held == false) {

    //If the item is not embed in a wall
    if (inwall == false) {

        //Inherit step event
        event_inherited();
        
        //If not kicked
        if (ready == 0) {
        
            //Slowdown if in ground
            if (gravity == 0) {
            
                //If the item is not underwater
                if (swimming == false) {
                
                    //If there's not slippery ground below
                    if (!collision_rectangle(bbox_left, bbox_bottom-8, bbox_right, bbox_bottom+1, obj_iceparent, 1, 0)) {
                    
                        //Slowdown until it stops
                        hspeed = max(0, abs(hspeed)-0.075)*sign(hspeed);
                        if (abs(hspeed) < 0.075)
                            hspeed = 0;
                    }
                    
                    //Otherwise, if there's slippery ground below
                    else if (collision_rectangle(bbox_left, bbox_bottom-8, bbox_right, bbox_bottom+1, obj_iceparent, 1, 0)){
                    
                        //Slow down until it stops, but slower
                        hspeed = max(0, abs(hspeed)-0.0375)*sign(hspeed);
                        if (abs(hspeed) < 0.0375)
                            hspeed = 0;
                    }
                }
                
                //Otherwise, if the item is underwater
                else {
                
                    //Slow down until it stops, but slower
                    hspeed = max(0, abs(hspeed)-0.0375)*sign(hspeed);
                    if (abs(hspeed) < 0.0375)
                        hspeed = 0;            
                }
                
                //Prevent passing through slopes
                while (collision_rectangle(x-2, bbox_top, x+2, bbox_bottom, obj_slopeparent, 1, 0))
                    y--;
            }
                    
            //Stop it if it gets stuck in a solid
            if (vspeed < 0)
            && (collision_rectangle(bbox_left, bbox_top+4, bbox_right, bbox_bottom-1, obj_solid, 0, 0)) {
            
                //Stop movement
                speed = 0;
                gravity = 0;
                
                //Make the item move
                inwall = true;
            }
        }        
    }
    
    //Otherwise, if the item is embed in a wall
    else if (inwall == true) {
    
        //Move it until it does not make contact with a solid
        x -= 2.5*sign(dir);
       
        //If the item is not longer overlapping a solid
        if (!collision_rectangle(bbox_left, bbox_top+4, bbox_right, bbox_bottom-1, obj_solid, 0, 0))
            inwall = false;
    }
}

