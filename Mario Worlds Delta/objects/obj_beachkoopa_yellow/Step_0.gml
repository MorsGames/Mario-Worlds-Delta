/// @description Yellow beach koopa logic

//Inherit event
event_inherited();

//Deny swimming if jumping
if (jumping == 1)
    swimming = false;

//Sliding logic
if (ready == 0) {
    
    //Slow down
    hspeed = max(0, abs(hspeed)-0.05)*sign(hspeed);
    
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
    if (sprite_index == spr_beachkoopa_yellow_walk)
    && (ready == 1)
    && (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom-4, obj_shell, 0, 0))
        ready = 2;
        
    //Otherwise if the koopa is no longer overlapping a shell, make him enter one.
    else if (ready == 2) {
    
        //Keep following the player
        if ((gravity == 0) && (ready > 1)) {
        
            //If the player does exist
            if (instance_exists(obj_playerparent)) {
            
                //If the koopa is moving to the left and the player is 48 pixels to the right
                if ((hspeed < 0) && (obj_playerparent.x > x+48))
                    hspeed = 1;
                    
                //Otherwise, if the koopa is moving to the right and the player is 48 pixels to the left
                else if ((hspeed > 0) && (obj_playerparent.x < x-48))
                    hspeed = -1;
            }
            
            //Check for a moving shell
            var mshell = collision_rectangle(x+(16*sign(xscale)), bbox_top, x+(24*sign(xscale)), bbox_bottom-4, obj_shell_kicked, 0, 0);
            
            //If there's a shell in position and said shell does not have a koopa inside.
            if (mshell) 
            && (mshell.hspeed != hspeed) {
            
                //Set the vertical speed
                if (swimming == 0)
                    vspeed = -4;
                else
                    vspeed = -2;
                    
                //Boost jump
                y--;
            }
        }
    
        //Check for a shell
        var shell = collision_rectangle(x+(5*sign(xscale)), bbox_top, x+(10*sign(xscale)), bbox_bottom+16, obj_shell, 0, 0);
        
        //If there's a shell in position and said shell does not have a koopa inside.
        if (shell) 
        && (shell.held == 0) {
        
            //Reduce speed so the koopa can enter the shell.
            if (abs(hspeed) > 0.5) {
            
                hspeed = 0.5*sign(xscale);
            }
        
            //If there's not a koopa inside the shell
            if (shell.koopainside == 0) 
            && (jumping == 0) {
            
                //Set the vertical speed
                vspeed = -2.6;
                
                //Boost jump
                y--;
            
                //Make the beach koopa jump
                jumping = 1;
            }
            
            //Otherwise, turn around
            else if (shell.koopainside != 0)
                hspeed = -hspeed;
        } 
        else {
        
            //Increment speed
            if (abs(hspeed) < 1)
                hspeed = 1*sign(xscale);
        }
        
        //Reset jump
        if (jumping == 1)
        && (gravity == 0)
            jumping = 0;                         
    }
}

//Set facing direction
if (hspeed > 0)
    xscale = 1;
else
    xscale = -1;

