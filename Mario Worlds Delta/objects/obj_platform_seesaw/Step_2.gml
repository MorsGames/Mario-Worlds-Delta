/// @description Player on the platform

//If player ever exists
if (instance_exists(obj_playerparent)) {

    with (obj_playerparent) {
    
        //Check for a seesaw
        var see = collision_rectangle(bbox_left, bbox_bottom-2, bbox_right, bbox_bottom+4, obj_platform_seesaw, 1, 0);
        
        //If that ground exists and the player is above it...
        if (see)  
        && (!collision_rectangle(bbox_left, bbox_top+4, bbox_right, see.y-1, obj_solid, 1, 0)) {
            
            //If player is falling down or landed
            if (vspeed >= 0) {
            
                //Make a theoretical triangle in order to calculate the y position
                var real_y = -(x-see.x)*dsin(see.degree); 
                var real_x = (x-see.x)*dcos(see.degree);
                var fake_x = x - see.x;
                var fake_y = clamp(real_y*fake_x/real_x, -see.sprite_width/2, see.sprite_width/2);
                
                //Adjust players y position
                y = see.y + fake_y-see.extra;
                
                //If platform ever moves horizontally, adjust players x
                x += (see.x-see.xprevious) * dcos(see.degree);
                
                //Stop vertical movement
                vspeed = 0;
                gravity = 0;
                
                //Reset values for player
                event_user(15);
            }
        }   
    }
}

