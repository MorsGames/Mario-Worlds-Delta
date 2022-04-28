/// @description Turn into 'Cape' or 'Fire Cape'

//If the item is not sprouting
if (action != "sprout") {

    //Get 1000 points
    if (nopoints == false) {
    
        with (instance_create(x-8, y, obj_score))
            event_user(5);
    }
    
    //If the player is big and there's NOT an item on reserve.
    if (global.powerup == cs_pow_super)
    && (global.reserveitem == cs_pow_small)
        global.reserveitem = cs_pow_super;
        
    //Otherwise, if the player does have a powerup
    else if (global.powerup > cs_pow_super)
        global.reserveitem = global.powerup;
    
    //If the player does not have the correct powerup
    if (global.powerup != cs_pow_cape) {
        
        //Play 'Powerup' sound
        audio_stop_play_sound(snd_feather, 0, false);    
        
        //Perform animation sequence
        _transform = instance_create(0, 0, obj_player_transform)
        with (_transform) {
        
            oldpowerup = global.powerup;
            newpowerup = other.powerup;
        }
        
        //Set powerup
        global.powerup = cs_pow_cape;     
    }
    else {
    
        //Play sounds
        audio_stop_play_sound(snd_powerup, 0, false);
        audio_stop_play_sound(snd_reserve, 0, false);
    }
    
    //Destroy
    instance_destroy();
}

