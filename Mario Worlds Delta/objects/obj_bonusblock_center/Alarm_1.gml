/// @description Give rewards

if (rewards >= 1) {

    //Decrement rewards
    rewards--;
    
    //Play 'Sprout' sound
    audio_stop_play_sound(snd_sprout, 0, false);
    
    //Create 1-UP
    with (instance_create(32, 48, obj_1up)) {
    
        depth = 10;
        permission = 0;
    }
    
    //Create another
    alarm[1] = 60;
}
else
    alarm[3] = 60;

