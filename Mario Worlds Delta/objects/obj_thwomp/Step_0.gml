/// @description Thwomp logic

//Fall down if the player gets close
if (ready == 0)
&& (instance_exists(obj_playerparent))
&& (obj_playerparent.x > bbox_left-32)
&& (obj_playerparent.x < bbox_right+32)
&& (y < obj_playerparent.y)
    ready = 1;

//Otherwise if falling, land on ground
else if (ready == 1) {   
    
    //Floor collision
    event_user(4);
    
    //When on ground
    if (gravity == 0) {
    
        //Play 'Explosion' sound
        audio_stop_play_sound(snd_explosion, 0, false);
        
        //Shake screen
        init_shake(25);        
        
        //Change state
        ready = 2;
        
        //Create smoke effects
        with (instance_create(bbox_left, bbox_bottom, obj_smoke)) sprite_index = spr_smoke_16;
        with (instance_create(bbox_right, bbox_bottom, obj_smoke)) sprite_index = spr_smoke_16;
        
        //Rise
        alarm[0] = 60;
    }
}

//Otherwise if ascending and nearby the start point, stop.
else if (ready == 3) && (y < ystart+1) {

    //Change state
    ready = 0;
    owo = 0;
    
    //Stop vertical movement
    vspeed = 0;
    y = ystart;
}

