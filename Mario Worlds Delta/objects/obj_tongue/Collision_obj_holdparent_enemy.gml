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
             
    //Otherwise, eat it
    else {
    
        //Enemy eaten
        hunger = 1;
        
        //Move tongue back
        ready = 1;
        alarm[0] = 8;
        
        //Otherwise, put shells inside yoshi's mouth
        if (other.object_index == obj_shell) {
        
            if (other.sprite_index != spr_shell_buzzy)
            && (other.sprite_index != spr_shell_spiny) {
                
                //Put a shell inside Yoshi's mouth
                obj_yoshi.mouthholder = obj_shell_kicked;
                
                //Set the shell sprite
                obj_yoshi.mouthsprite = other.sprite_index;
            }
        }
        
        //Otherwise, if this is a galoomba or a goombud
        else if (other.object_index == obj_galoomba_held) {
        
            //Put a shell inside Yoshi's mouth
            obj_yoshi.mouthholder = obj_galoomba_held;
            
            //Set the shell sprite
            obj_yoshi.mouthsprite = other.sprite_index;                    
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

