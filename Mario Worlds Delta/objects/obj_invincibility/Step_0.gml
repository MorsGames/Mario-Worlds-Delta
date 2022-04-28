/// @description Invincibility logic

//If the player dies, destroy
if (instance_exists(obj_player_dead)) 
|| (instance_exists(obj_player_clear)) {

    instance_destroy();
    exit;
}

//If the player does exist.
if (instance_exists(obj_playerparent)) {

    //Snap into the player position.
    x = obj_playerparent.x;
    y = obj_playerparent.y;
    
    //Make the player invulnerable.
    with (obj_playerparent) {
    
        //Keep invulnerability
        invulnerable = true;
        image_alpha = 1;
        alarm[0] = -1;
        alarm[1] = -1;    
    }
    
    //Get the mask from the player
    mask_index = obj_playerparent.mask_index;
}

else {

    //Set object to follow
    event_user(15);
    
    //Snap into the following object position.
    x = follow.x;
    y = follow.y;    
}

//Warn the player that the starman effect is running out
if ((warning == 0) && (alarm[0] <= 120)) {

    //Play 'Switch Timer' sound
    audio_stop_play_sound(snd_switchtimer, 0, false);
    
    //Warn
    warning = 1;
}
else if ((warning == 1) && (alarm[0] > 120)) 
    warning = 0;

