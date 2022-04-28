/// @description Turn into a real coin or a brick

//If the pswitch effect is active
if (obj_levelcontrol.switchon == 0) {

    //Play 'Coin' sound
    audio_stop_play_sound(snd_coin, 0, false);
    
    //Turn into a real coin
    with (instance_create(x, y, obj_coin))       
        image_index = other.image_index;
}

//Otherwise, if not...
else {

    //Turn into a real brick
    with (instance_create(x, y, obj_brick))
        image_index = other.image_index;
}

//Destroy
instance_destroy();

