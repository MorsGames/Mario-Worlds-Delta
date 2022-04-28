/// @description Eat enemies

if (hunger == 0) && (ready == 0) {

    //If the enemy is edible by yoshi
    if (other.edible > 1) {
    
        //If the tongue does not phase through
        if (other.edible == 2) {
        
            //Move tongue back
            ready = 1;
            alarm[0] = 8;
        }
    }
    
    //Otherwise, create item
    else if (other.edible == 1)
        with (other) event_user(7);
        
    //Otherwise, eat it
    else {
    
        //Enemy eaten
        hunger = 1;
        
        //Move tongue back
        ready = 1;
        alarm[0] = 8;
        
        //Otherwise, put shells inside yoshi's mouth
        if (other.object_index == obj_shell_kicked) {
        
            if (other.sprite_index != spr_shell_buzzy)
            && (other.sprite_index != spr_shell_spiny) {
            
                //If the yoshi is a red one, put fire inside
                if (obj_yoshi.colour = 1)
                    obj_yoshi.mouthholder = obj_yoshi_fire;
                
                //Otherwise,
                else {
                
                    //Put a shell inside Yoshi's mouth
                    obj_yoshi.mouthholder = obj_shell_kicked;
                    
                    //Set the shell sprite
                    obj_yoshi.mouthsprite = other.sprite_index;
                }
            }
        } 
        
        //Food sprite
        foodsprite = other.sprite_index;
        
        //Food image
        foodindex = other.image_index;
        
        //Food offset
        with (other) other.foodoffset = (bbox_left+bbox_right)/2-x;
        
        //Destroy food
        with (other) instance_destroy();
    }
}

