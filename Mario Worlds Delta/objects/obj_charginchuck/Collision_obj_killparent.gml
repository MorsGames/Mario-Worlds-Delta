/// @description Collision with objects under obj_killparent

//If the enemy is vulnerable
if (vulnerable < 99) {

    //Play 'Kick' sound
    audio_stop_play_sound(snd_kick, 0, false);

    //Kill the enemy
    event_user(0);
    
    //Get 800 points
    with (instance_create(round(bbox_left+bbox_right)/2-8, bbox_top, obj_score)) event_user(4);
    
    //Create 'Spinthump' effect
    instance_create(round(bbox_left+bbox_right)/2, round(bbox_top+bbox_bottom)/2, obj_spinthump);
}

