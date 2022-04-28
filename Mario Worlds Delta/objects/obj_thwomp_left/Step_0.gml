/// @description Thwomp logic

//Go to the left if the player gets close
if (ready == 0)
&& (instance_exists(obj_playerparent))
&& (collision_rectangle(bbox_left-128, bbox_top, bbox_left, bbox_bottom, obj_playerparent, 0, 0)) {

    //Set the gravity
    gravity = 0.15;
    
    //Go to the left
    ready = 1;
}

//Otherwise if moving to the left, check for a solid
else if (ready == 1) {
    
    //Check for a solid
    mysolid = collision_rectangle(bbox_left+hspeed, bbox_top+4, bbox_left, bbox_bottom-1, obj_solid, 0, 0);
    mylimit = collision_rectangle(bbox_left+hspeed, bbox_top+4, bbox_left, bbox_bottom-1, obj_endmarker, 0, 0);
    
    //If there's a solid
    if (mysolid) {
    
        //Play 'Explosion' sound
        audio_stop_play_sound(snd_explosion, 0, false);
        
        //Shake screen
        init_shake(25);
        
        //Change state
        ready = 2;
    
        //Stop horizontal speed
        hspeed = 0;
        
        //Stop gravity
        gravity = 0;
        
        //Create smoke effects
        with (instance_create(bbox_left, bbox_top, obj_smoke)) sprite_index = spr_smoke_16;
        with (instance_create(bbox_left, bbox_bottom, obj_smoke)) sprite_index = spr_smoke_16;
        
        //Snap to the right of the solid
        x = mysolid.bbox_right+13;
        
        //Move to start
        alarm[0] = 60;
    }
    else if (mylimit) {
    
        //Stop horizontal speed
        hspeed = 0;
        
        //Stop gravity
        gravity = 0;
        
        //Snap to the right of the solid
        x = mylimit.bbox_right+13;
        
        //Move to start
        alarm[0] = 60;        
    }
}

//Otherwise if ascending and nearby the start point, stop.
else if (ready == 3) && (x > xstart-1) {

    //Change state
    ready = 0;
    
    //Stop vertical movement
    hspeed = 0;
    x = xstart;
}

//Cap horizontal speed
if (hspeed < -4)
    hspeed = -4;

