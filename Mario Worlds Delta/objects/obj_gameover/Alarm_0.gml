/// @description Restart the game

//Stop all playing sounds
audio_stop_all();

//Initialize globals
init_globals();

//With the controller
with (obj_controller) {

    //Play 'Coin' sound
    audio_stop_play_sound(snd_coin, 0, false);
    
    //Go to next screen
    alarm[4] = 200;
}

//Go to the initial screen
room_goto(rm_init);

