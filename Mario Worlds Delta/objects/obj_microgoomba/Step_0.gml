/// @description Microgoomba logic.

if (ready == 0) {

    //Check for Mario.
    mario = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_playerparent, 0, 1);
    if (mario) {
    
        //Move towards mario.
        ready = 1;
        
        //Stop the path movement
        path_end();
        
        //Stay for 3 seconds
        alarm[0] = 180;
        
        //Snap into position.
        if (global.powerup == cs_pow_small)
            yfix = random_range(0, 8);
        else
            yfix = random_range(-8, 8);
    }
}
else {
    
    //Set up the position.
    if (instance_exists(obj_playerparent)) {
    
        //Snap to position.  
        x = obj_playerparent.x+xfix;
        y = obj_playerparent.y+yfix;
    
        //If Mario is not swimming.
        if (!obj_playerparent.swimming) {
        
            //Set up the position of the microgoomba.
            if (ready = 1) {
            
                xfix += 0.5;
                if (xfix > 9) {
                
                    ready = 2;
                    depth = -4;
                }
            }
            else if (ready = 2) {
            
                xfix -= 0.5;
                if (xfix < -9) {
                
                    ready = 1;
                    depth = -6;
                }
            }
            
            //If Mario jumps and the 'random' variable hits 1.
            if (obj_playerparent.jumping = 1) {
            
                if (flee) {
                
                    event_user(0);
                    exit;
                }
                
                //Prevent mario from jumping.
                obj_playerparent.jumping = 2;
                
                //Set the vertical speed.
                obj_playerparent.vspeed = -1.5;                
            }
        }
        
        //Otherwise, if Mario is swimming.
        else
            alarm[0] = 1;
    }
    else
        alarm[0] = 1;
}

if (y > __view_get( e__VW.YView, 0 )+256)
    instance_destroy();

