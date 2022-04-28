/// @description Generate more fireworks

//If there's fireworks left
if (fireworks > 0) {
    
    //Play 'Firework' sound
    audio_play_sound(snd_firework, 0, false);
    
    //Spawn a firework
    with (instance_create(__view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ) / 2 + random_range(-80, 80), __view_get( e__VW.YView, 0 )+random_range(32,64), obj_smoke)) {
    
        //Set sprite
        sprite_index = spr_firework;
    
        //Set speed
        image_speed = 0.3;
        
        //Set speed
        score += 500;
    }
      
    //Decrease amount of firework
    fireworks--;
    
    //Repeat
    alarm[6] = 30;
}

