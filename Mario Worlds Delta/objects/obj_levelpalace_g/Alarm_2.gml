/// @description Generate effects 8 times

//If there's not effects left
if (eff == 0) {

    //Play 'Destroy' sound
    audio_stop_play_sound(snd_destroy, 0, false);
    
    //Turn into a stomped switch
    image_speed = 0;
    image_index = 1;
    
    //Mark as beaten
    beaten = 2;
    
    //Create smoke effect
    with (instance_create(x+8, y+8, obj_smoke)) sprite_index = spr_smoke_32;
    
    //Make the player able to move again
    with (obj_mapplayer) alarm[1] = 60;
}

//Otherwise
else if (eff > 0) {

    //Play 'Inventory' sound
    audio_stop_play_sound(snd_palacesplit, 0, false);
    
    //Initialize temp variable
    var a;
    a = 0;
    
    //Repeat 8 times
    repeat (8) {
    
        with (instance_create(x+8, y+8, obj_shard_switch)) {
        
            //Set the sprite and frame
            sprite_index = spr_switcheff;
            image_speed = 0;
            image_index = 1;
            
            //Set the motion
            motion_set(a, 4);
        }
        
        //Set new direction
        a += 45;
    }
    
    //Repeat
    eff--;
    if (eff > 0)
        alarm[2] = 15;
    else
        alarm[2] = 90;
}

