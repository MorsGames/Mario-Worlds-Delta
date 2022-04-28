/// @description Make the player invulnerable

//Play 'Powerup' sound
audio_stop_play_sound(snd_powerup, 0, false);

//If the player is already invincible
if (instance_exists(obj_invincibility)) {

    //Extend the timer on his invincibility
    obj_invincibility.alarm[0] = 720;
    obj_invincibility.alarm[2] = 1;
    
    //Deny invincibility end.
    if (obj_invincibility.alarm[1] > 0)    
        obj_invincibility.alarm[1] = -1;    
}

//Otherwise, if it's not invincible.
else {

    //Create invincibility
    instance_create(x,y,obj_invincibility);
}

//Get 1000 points
with (instance_create(x-8, y, obj_score)) event_user(5);

//Destroy
instance_destroy();

