/// @description Save the last point

if (image_index == 0) {

    //Play 'Whistle' sound
    audio_stop_play_sound(snd_whistle, 0, false);
    
    //Create a sparkle
    instance_create(x+16, y+8, obj_sparkle);  
    
    //Make the player big
    if (global.powerup == cs_pow_small) {
    
        global.powerup = cs_pow_super;
    }
    
    //Make invisible
    image_index = 1;
    
    //Remember checkpoint
    global.checkpoint = id;
    global.checkpointroom = room;
}

