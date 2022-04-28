/// @description Slide or smash the ground

//If the player is smashing the ground
if (smash == 1) {

    //If the player's head is right at the bottom
    if (dive_index == 5) {
    
        //Play 'Thud' sound
        audio_stop_play_sound(snd_thud, 0, false);
        
        //Shake screen
        init_shake(snd_thud);

        //Create 'Yoshi Stomp'
        with (instance_create(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, __view_get( e__VW.YView, 0 ), obj_stomp)) sprite_index = spr_powkiller;
        
        //Create Smoke effects
        with (instance_create(x-16, y+8, obj_smoke)) sprite_index = spr_smoke_16;
        with (instance_create(x+16, y+8, obj_smoke)) sprite_index = spr_smoke_16;
    
        //Destroy
        instance_destroy();
    }
    else {
    
        smash = 0;
        dive_index = 2;
    }
}

//Check for a slope
slope_below = collision_rectangle(x-2, bbox_bottom+1, x+2, bbox_bottom+2, obj_slopeparent, 1, 0);

//If there's a slope below the player
if (slope_below) {

    //If the player's horizontal speed is not at the limit, allow slide
    if (abs(hspeed) != 2.5)
        hspeed += slope_below.add;
}

//Otherwise, if there's not a slope below
else if (gravity == 0) {

    //If the player is not overlapping a slippery surface
    if (!collision_rectangle(bbox_left, bbox_bottom-8, bbox_right, bbox_bottom+1, obj_iceparent, 1, 0)) {

        //Reduce player's horizontal speed yet slower
        hspeed = max(0, abs(hspeed)-0.05)*sign(hspeed);
        
        //Set horizontal speed to 0 when the horizontal speed hits value in 'dec/8'.
        if (hspeed < 0.05)
        && (hspeed > -0.05) {
        
            hspeed = 0;
            instance_destroy();
        }
    }
    
    //Otherwise, slow down slower
    else {

        //Reduce player's horizontal speed yet slower
        hspeed = max(0, abs(hspeed)-0.0125)*sign(hspeed);
        
        //Set horizontal speed to 0 when the horizontal speed hits value in 'dec/8'.
        if (hspeed < 0.0125)
        && (hspeed > -0.0125) {
        
            hspeed = 0;
            instance_destroy();
        } 
    }
}

