/// @description Boss Logic

//Inherit event from parent
event_inherited();

///Animate
if (state == 2) {

    //Distort back to normal
    if (xscale <= 1) {
    
        //Normal scale
        xscale = 1;
        
        //Walk again
        alarm[10] = 32;
        
        //Change state until yscale catches up
        if (yscale == 1) then state = 3;
    }
    else xscale -= 0.1;
    
    //Distort up
    if (yscale >= 1) 
        yscale = 1;
    else
        yscale += 0.06;
}
if (state == 4) {

    //The demise of the goomba
    if (ps_y <= -16)
    {
        //Switch to shrinking state
        state = 5;
        ps_y = -16;
        
        //Play 'Shrink' sound
        audio_stop_play_sound(snd_boss_shrink, 0, false);
    }
    else {
    
        //Grow
        xscale += 0.09;
        yscale += 0.09;
        
        //Lift up
        ps_y -=2;
    }
}
if (state == 5) {

    //Shrink
    if (xscale <= 0) {
    
        //Play 'Pop' sound
        audio_stop_play_sound(snd_boss_pop, 0, false);        
        
        //Create smoke effect
        with (instance_create(x, y, obj_smoke)) sprite_index = spr_smoke_16;
                
        //Destroy~!
        instance_destroy();
    }
    else {
    
        //Downscale both x/y
        xscale -= 0.016;
        yscale -= 0.016;
        
        //Rotate
        angle += 8;
    }
}

