/// @description Allow block to be hit again and activate the disco light

//Play 'Switch' sound
audio_stop_play_sound(snd_switch, 0, false);

//Allow block hit
ready = 0;

//With the Disco Ball
with (obj_light_disco) {

    //Check if the light exists
    if (instance_number(obj_light_disco_gen) == 0)
        event_user(0);
    else
        event_user(1);
}

