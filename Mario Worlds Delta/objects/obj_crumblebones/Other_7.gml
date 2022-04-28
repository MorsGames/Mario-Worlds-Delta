/// @description End animation or revive

//If animating forward
if (image_speed > 0) {
    
    //Stop the animation
    image_speed = 0;
    image_index = 1;
}

//Otherwise, if animating backwards
else if (image_speed < 0) {

    //If this is a pile of drybones
    if (sprite_index == spr_drybones_crumble) {
    
        //Turn into the correct object
        switch (type) {
        
            //Dry Bones
            case (0): {
            
                with (instance_create(x,y,obj_drybones)) {
                
                    hspeed = 0.5*sign(other.xscale);
                }
                instance_destroy();
            } break;
            
            //Dry Bones (Throw)
            case (1): {
            
                with (instance_create(x,y,obj_drybones_throw)) {
                
                    hspeed = 0.5*sign(other.xscale);
                }
                instance_destroy();
            } break;
        }
    }
    
    //Otherwise, if these are bones from a bony beetle
    else {
    
        with (instance_create(x, y, obj_bonybeetle)) {
        
            hspeed = 0.5*sign(other.xscale);
        }
        instance_destroy();
    }
}

