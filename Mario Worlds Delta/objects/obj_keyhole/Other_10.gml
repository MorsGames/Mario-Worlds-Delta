/// @description Begin key sequence

//Play 'Keyhole' sound
audio_stop_play_sound(snd_keyhole, 0, false);

//Start the animation
ready = 1;

//Stop music and time
with (obj_controller_level) {

    event_user(4);
    alarm[2] = 0;
}

//Open up the secret exit
global.clear = 2;

