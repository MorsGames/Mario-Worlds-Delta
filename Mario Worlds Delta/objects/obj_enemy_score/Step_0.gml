/// @description Destroy when falling down

if ((vspeed > 0) && (y > ystart-16)) {

    //Play 'Coin' sound
    audio_stop_play_sound(snd_coin, 0, false);
    
    //Create a sparkle
    instance_create(x, y+8, obj_sparkle);

    //Get some points
    with (instance_create(x-8, ystart, obj_score)) {
    
        switch (other.handicap) {
        
            case (1): event_user(1); break; //100
            case (2): event_user(3); break; //400
            case (3): event_user(5); break; //1000
            case (4): event_user(7); break; //4000
            case (5): event_user(9); break; //1-UP
            case (6): event_user(11); break; //3-UP
            default: event_user(12); break; //5-UP
        }
    }
    
    //Destroy
    instance_destroy();
}

