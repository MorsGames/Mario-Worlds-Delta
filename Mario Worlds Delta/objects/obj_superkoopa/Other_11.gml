/// @description Default stomp event

//If this enemy gives a feather
if (feather == 1) {

    //Create a feather
    instance_create(x, y, obj_feather_sprout);
    
    //Turn into a regular blue beach koopa
    with (instance_create(x, y+2, obj_beachkoopa_blue)) {
    
        //Set the horizontal speed
        hspeed = 1*sign(other.xscale);
        
        //Ignore alarm
        alarm[10] = -1;
    }
    
    //Destroy
    instance_destroy();
}

//Otherwise
else {
    
    //Create a stomped enemy
    with (instance_create(x, y, obj_enemy_stomped)) {
    
        sprite_index = other.stompsprite;
        image_xscale = other.xscale;
        image_speed = 0.3;
        hspeed = other.hspeed;    
    }
    
    //Destroy
    instance_destroy();
}

