/// @description Throw up a fireball

//If there's not gravity
if (gravity == 0) {
    
    //If the player does exist.
    if (instance_exists(obj_playerparent)) {
    
        //If the player is at the right.
        if (obj_playerparent.x > x) {
        
            with (instance_create(x, y-4, obj_firebro_fireball)) {
            
                hspeed = 3;
                image_xscale = 1;
            }
        }
        
        //Otherwise, if the player is at the left.
        else if (obj_playerparent.x < x) {
        
            with (instance_create(x, y-4, obj_firebro_fireball)) {
            
                hspeed = -3;
                image_xscale = -1;
            }
        }
    }
    
    //Otherwise, if it does not exist.
    else {
        
        with (instance_create(x, y-4, obj_firebro_fireball)) {
        
            hspeed = -3;
            image_xscale = -1;
        }
    }
    
    //Next
    alarm[4] = 30;
    
    //Set the default sprite.
    _throw = 1;
    
    //Stop horizontal speed
    prevhsp = hspeed;
    hspeed = 0;
    
    //Stop alarm 0
    prevalm = alarm[1];
    alarm[1] = -1;
}
else
    alarm[3] = 1;

