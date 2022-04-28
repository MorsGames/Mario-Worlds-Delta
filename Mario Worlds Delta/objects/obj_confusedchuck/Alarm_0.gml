/// @description Set throwing pose

//Set throwing state
throwing = 1;

//If the chuck hp is maxed out
if (hp == 3) {
    
    //If the player exists
    if (instance_exists(obj_playerparent)) {
    
        //If the player is above
        if (obj_playerparent.y < y) {
        
            //Set the jumping sprite
            sprite_index = spr_confusedchuck_jump;
            
            //Animate
            image_speed = 0.15;
            image_index = 1;
            
            //Boost jump
            y--;
            
            //Set jump state
            jumping = 1;
            
            //Set vertical speed
            if (swimming == 1)
                vspeed = -1.85;
            else
                vspeed = -3.7;
        }     
        
        //Otherwise, animate normally
        else {
        
            //Set default sprite
            sprite_index = spr_confusedchuck;
            
            //Animate
            image_speed = 0.15;
        }           
    }
}
else
    event_inherited();

