/// @description Destroy if the player is doing a spin jump or it is riding a yoshi

//If the player is doing a spin jump or it is riding a yoshi
if (global.mount == 1)
|| (other.jumpstyle == 1) {

    //Force stop stomp sound
    audio_stop_sound(snd_stomp);
    
    //Destroy spin effects
    with (obj_spinthump) instance_destroy();

    //Create spin smoke effect
    instance_create(round(bbox_left+bbox_right)/2, round(bbox_top+bbox_bottom)/2, obj_spinsmoke);
    
    //Get points based on combo
    if (other.hitcombo <= 6) //If the player did 6 or less consecutive stomps
        with (instance_create((bbox_left+bbox_right)/2-8, bbox_top, obj_score)) event_user(2+obj_playerparent.hitcombo);
    else
        with (instance_create((bbox_left+bbox_right)/2-8, bbox_top, obj_score)) event_user(9);
    
    //Increment combo
    other.hitcombo++;
    
    //Bounce against if riding or just stop
    if (global.mount > 0) {
    
        //Bounce
        with (other) event_user(1);
        
        //Create two fireballs if the player is wearing a red shoe
        if (global.mount == 2)
        && (global.mountcolour = 1) {
        
            with (instance_create(x+12, y+8, obj_fireball)) hspeed = 1.5;
            with (instance_create(x-12, y+8, obj_fireball)) hspeed = -1.5;
        }
    }
    else {
    
        if (enemy_check() == false)
            other.vspeed = 0;
        else
            with (other) event_user(1);
    }
        
    //Destroy
    instance_destroy();
}

