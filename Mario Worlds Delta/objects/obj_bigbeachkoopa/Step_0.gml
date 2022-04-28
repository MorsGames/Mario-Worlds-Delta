/// @description Gargantua Beach Koopa logic

//Inherit event from parent
event_perform_object(obj_enemyparent, ev_step, ev_step_normal);

//Sliding logic
if (ready == 0) {
    
    //Slow down
    if (gravity == 0) then hspeed = max(0,abs(hspeed)-0.05)*sign(hspeed);
    
    //If the koopa is about to stop
    if (hspeed < 0.05) 
    && (hspeed > -0.05) {
        
        //Stop it
        hspeed = 0;
        
        //Allow movement
        ready = 1;
        
        //Start moving
        alarm[10] = 90;
    }
}

//Otherwise, check for shells
else if (ready > 0) {

    //If the koopa just came out from the shell, do not allow it to enter.
    if (sprite_index == spr_bigbeachkoopa_walk)
    && (ready == 1)
    && (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom-4, obj_shell, 0, 0))
        ready = 2;
        
    //Otherwise if the koopa is no longer overlapping a shell, make him enter one.
    else if (ready == 2) {
    
        //Check for a shell
        var shell = collision_rectangle(x+(10*sign(xscale)), bbox_top, x+(16*sign(xscale)), bbox_bottom-4, obj_shell, 0, 0);
        
        //If there's a shell in position and said shell does not have a koopa inside.
        if (shell) 
        && (shell.held == 0)
        && (shell.sprite_height > 16) {
        
            //If there's not a koopa inside the shell
            if (shell.koopainside == 0) 
            && (jumping == 0) {
            
                //Set the horizontal speed
                hspeed = 0.6*sign(xscale);
            
                //Set the vertical speed
                vspeed = -4;
                
                //Boost jump
                y--;
            
                //Make the beach koopa jump
                jumping = 1;
            }
            
            //Otherwise, turn around
            else if (shell.koopainside != 0)
                hspeed = -hspeed;
        } 
        
        //Reset jump
        if (jumping == 1)
        && (gravity == 0)
        && (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_shell, 0, 0)) {
        
            jumping = 0;
            if (abs(hspeed) > 0.5)
                hspeed = 0.5*sign(xscale);
        }                 
    }
}

//Set facing direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

