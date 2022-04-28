/// @description Create a new player object

//If this ID is the same as the previous one
if (global.exit_id == myid) {
    
    //If the player warped from another room
    if (global.postchange != -1) {
    
        //Destroy player objects
        event_user(1);
        
        //Switch between warp types
        switch (global.postchange) {
        
            //Normal
            case (0): player_create(x, y); break;
            
            //Warp
            case (1): {
            
                //If the player is going to be shot with a cannon
                if (cannon != 0) {
                
                    //Create a player
                    player = player_create(x, y);
                    with (player) {
                    
                        gravity_enable = false;
                        xscale = other.cannon;
                        depth = 10;
                    }
                
                    //Blast off
                    alarm[0] = 32;
                    
                    //Put camera in position
                    if (instance_exists(obj_levelcontrol)) {
                    
                        obj_levelcontrol.x = x;
                        obj_levelcontrol.y = y;
                    }
                }
            
                //Otherwise, warp normally
                else {
                    
                    //Create a moving warp object
                    with (instance_create(x, y, obj_player_warp)) {
                        
                        //Direction
                        direction = global.exit_dir;
                        
                        //Disallow move
                        canmove = 0;
                        alarm[1] = 32;
                        
                        //Allow exit from pipe
                        ready = 1;                
                    }
                }
            } break;
        }
        
        //Reset warp
        global.postchange = -1;
    }
}

