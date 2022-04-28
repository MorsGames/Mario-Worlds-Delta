/// @description Jump onto Lakitu's cloud

//If the player does exist
if (instance_exists(obj_playerparent)) {
    
    //Check for the player
    if (collision_rectangle(bbox_left, bbox_top-2, bbox_right, bbox_bottom-2, obj_playerparent, 1, 0)) {
    
        //If the player is not on this cloud
        if (player_on == false)
        && (can_on == true)
        && (obj_playerparent.vspeed > 0)
        && (obj_playerparent.floatnow == 0)
        && (obj_playerparent.state != statetype.climb) {
        
            //Force set 'Idle' state
            with (obj_playerparent) {
            
                //Set 'Idle' state
                state = statetype.idle;
                
                //Set oncloud state
                oncloud = true;
                
                //Stop
                vspeed = 0;
                gravity = 0;
            }
        
            //Player is now on this cloud
            player_on = true;
            
            //This cloud cannot be ridden
            can_on = false;
            
            //Set vertical speed
            vspeed = 0.5;
            
            //Start timers
            if (set == false) {
            
                set = true;
                alarm[0] = 30;
                alarm[1] = 540;
                alarm[3] = 720;
            }
        }
    }
}

///Cloud Movement

//Check if the player exists
if (instance_exists(obj_playerparent)) {
    
    //If the player is on this cloud
    if (player_on == true) {
        
        //Force set player variables
        obj_playerparent.jumpstyle = 0;
        obj_playerparent.oncloud = 1;
        
        //If the player is climbing
        if (obj_playerparent.state == statetype.climb) {
        
            with (obj_playerparent) {
            
                oncloud = false;                
            }
            player_on = false;
            can_on = true;
        }
        
        //If 'Action 0' is pressed
        if (input_check_pressed(input.action0))
        || (input_check_pressed(input.action2)) {
        
            //If the player can jump
            if (obj_playerparent.jumping == 0) {
            
                //With the player
                with (obj_playerparent) {
            
                    oncloud = false;
                    jumping = 1;
                    y--;
                    vspeed = jumpstrength*-1;
                }
                
                //Set vertical speed
                vspeed = 0.5;
                
                //Dismount from the cloud
                player_on = false;
                
                //Allow mount
                can_on = true;
            }
        }
    }
    
    //Wall collision
    event_user(3);
}

//Movement
event_user(0);

