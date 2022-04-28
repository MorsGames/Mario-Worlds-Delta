/// @description Angry sun logic

//If the angry sun is waiting...
if (ready == 0) {

    //If the player does exist
    if (instance_exists(obj_playerparent)) {
    
        //If the player reached the point where the sun will attack
        if (obj_playerparent.x > xmin) {
        
            //Animate
            image_speed = 0.2;
            
            //Went nut
            ready = 1;
            
            //Create movement object
            movement = instance_create(0, 0, obj_angrysun_movement);
        }
    }
}

//Otherwise, if the sun went nuts.
else {

    //If the movement object exists
    if (instance_exists(movement)) {
    
        //Move towards it
        x = round(__view_get( e__VW.XView, 0 ))+movement.x;
        y = round(__view_get( e__VW.YView, 0 ))+movement.y;
        
        //Set up the sprite
        if (movement.ready == 3)
        || (movement.ready == 4)
            sprite_index = spr_angrysun_swoop;
        else
            sprite_index = spr_angrysun;
    }
}

