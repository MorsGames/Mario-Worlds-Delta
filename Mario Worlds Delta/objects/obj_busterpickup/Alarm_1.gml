/// @description Throw the brick if the player is on sight

//If the holder does not exist
if (!instance_exists(parent)) {

    alarm[1] = 1;
    exit;
}

//If the player does exist
if (instance_exists(obj_playerparent)) {

    //If the player is 48 pixels below the holder top
    if (obj_playerparent.y > y-48) {
    
        //Create a thrown brick
        with (instance_create(x, y, obj_brick_throw_th)) {
        
            //If the player is at the left, throw it in that direction
            if (obj_playerparent.x < x) {
            
                //Make the parent look at that direction
                with (other.parent) {
                
                    xscale = -1;
                    event_user(15);
                }
                
                //Set the motion
                hspeed = -2.7;
                vspeed = -3;
            }
            
            //Otherwise if the player is at the right, throw it in that direction
            else if (obj_playerparent.x > x) {
                        
                //Make the parent look at that direction
                with (other.parent) {
                
                    xscale = 1;
                    event_user(15);
                }
                
                //Set the motion
                hspeed = 2.7
                vspeed = -3;              
            }
            
            //Throw it
            ready = 1;
            
            //Allow the brick to hurt the player
            harmplayer = 1;
            
            //Set the brick details
            sprite_index = other.sprite_index;
        }
        
        //Destroy
        instance_destroy();
    }
    
    //Otherwise, wait
    else {
    
        alarm[1] = 1;
        exit;
    }
}

