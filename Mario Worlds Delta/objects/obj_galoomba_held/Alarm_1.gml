/// @description Turn into a galoomba

//If there's gravity
if (gravity > 0) {

    alarm[1] = 1;
    exit;
}

//Otherwise, return to normal
else {
    
    //Switch sprite
    switch (sprite_index) {
    
        //Galoomba
        case (spr_galoomba_down): {
        
            with (instance_create(x, y, obj_galoomba)) {
            
                vspeed = -3;
            } 
        } break;
        
        //Red Galoomba
        case (spr_galoomba_red_down): {
        
            with (instance_create(x, y, obj_galoomba_red)) {
            
                sprite_index = spr_galoomba_red;
                vspeed = -3;
                charge = 1;
                image_speed = 0.2;
            }         
        } break;
        
        //Goombud
        case (spr_goombud_down): {
        
            with (instance_create(x, y, obj_goombud)) {
            
                vspeed = -3;
            }
        } break;
    }
    
    //Destroy
    instance_destroy();
}

