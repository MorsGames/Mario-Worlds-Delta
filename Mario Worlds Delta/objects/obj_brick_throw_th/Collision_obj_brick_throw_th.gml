/// @description Destroy

//If this block is being held
if (held) {

    //Play 'Kick' sound
    audio_stop_play_sound(snd_kick, 0, false);

    //Get 1000 points
    with (instance_create(x-8, y, obj_score)) event_user(5);
    
    //Create spin thump
    with (instance_create(bbox_left+bbox_right/2, bbox_top+bbox_bottom/2, obj_smoke)) sprite_index = spr_spinthump;
    
    //Destroy both brick
    event_user(0);
    with (other) event_user(0);
}

//Otherwise, just shatter the other one
else {

    if (ready)
        with (other) event_user(0);
}

