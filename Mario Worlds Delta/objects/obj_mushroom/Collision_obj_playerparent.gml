/// @description Turn into 'Super' or hold the item in reserve.

//Get 1000 points
with (instance_create(x-8, y, obj_score)) event_user(5);

//Get the powerup if small
if (global.powerup == cs_pow_small) {

    //Play 'Powerup' sound
    audio_stop_play_sound(snd_powerup, 0, false);

    //Get it
    _transform = instance_create(0, 0, obj_player_transform);
        _transform.oldpowerup = global.powerup;
        _transform.newpowerup = powerup;
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

