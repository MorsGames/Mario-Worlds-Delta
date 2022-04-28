/// @description Get the powerup

//If this is a mushroom
if (sprite_index == spr_mushroom) {
    
    //Get the powerup if small
    if (global.powerup == cs_pow_small) {
    
        //Play 'Powerup' sound
        audio_stop_play_sound(snd_powerup, 0, false);
    
        //Get it
        _transform = instance_create(0, 0, obj_player_transform);
            _transform.oldpowerup = global.powerup;
            _transform.newpowerup = cs_pow_super;
    }
    
    //Otherwise, reserve the item
    else {
    
        //Play 'Powerup' sound
        audio_stop_play_sound(snd_reserve, 0, false);
    
        //Put the 'Mushroom' in reserve
        if (global.reserveitem == cs_pow_small)
            global.reserveitem = cs_pow_super;
    }
    
    //Destroy
    instance_destroy();
}

//Otherwise, if this is a fire flower
else if (sprite_index == spr_fireflower) {
    
    //If the player is big and there's NOT an item on reserve.
    if (global.powerup == cs_pow_super)
    && (global.reserveitem == cs_pow_small)
        global.reserveitem = cs_pow_super;
        
    //Otherwise, if the player does have a powerup
    else if (global.powerup > cs_pow_super)
        global.reserveitem = global.powerup;
    
    //If the player does not have the correct powerup
    if (global.powerup != cs_pow_fire) {
        
        //Play 'Powerup' sound
        audio_stop_play_sound(snd_powerup, 0, false);    
        
        //Perform animation sequence
        _transform = instance_create(0, 0, obj_player_transform)
        with (_transform) {
        
            oldpowerup = global.powerup;
            newpowerup = 2;
        }
        
        //Set powerup
        global.powerup = cs_pow_fire;     
    }
    else {
    
        //Play sounds
        audio_stop_play_sound(snd_powerup, 0, false);
        audio_stop_play_sound(snd_reserve, 0, false);
    }
    
    //Destroy
    instance_destroy();    
}

//Otherwise, if this is a ice flower
else if (sprite_index == spr_iceflower) {
    
    //If the player is big and there's NOT an item on reserve.
    if (global.powerup == cs_pow_super)
    && (global.reserveitem == cs_pow_small)
        global.reserveitem = cs_pow_super;
        
    //Otherwise, if the player does have a powerup
    else if (global.powerup > cs_pow_super)
        global.reserveitem = global.powerup;
    
    //If the player does not have the correct powerup
    if (global.powerup != cs_pow_ice) {
        
        //Play 'Powerup' sound
        audio_stop_play_sound(snd_powerup, 0, false);    
        
        //Perform animation sequence
        _transform = instance_create(0, 0, obj_player_transform)
        with (_transform) {
        
            oldpowerup = global.powerup;
            newpowerup = 4;
        }
        
        //Set powerup
        global.powerup = cs_pow_ice;     
    }
    else {
    
        //Play sounds
        audio_stop_play_sound(snd_powerup, 0, false);
        audio_stop_play_sound(snd_reserve, 0, false);
    }
    
    //Destroy
    instance_destroy();    
}

