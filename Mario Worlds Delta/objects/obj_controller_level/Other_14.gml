/// @description Stop all music and fanfares

//If the stream is playing
if (audio_is_playing(global.stream)) {
    
    //Stop the stream...
    audio_stop_sound(global.stream);
    
    //...and free it from memory
    audio_destroy_stream(global.stream);
    global.stream = noone;
}

//Prevent it from playing
musicdisable = 1;

//Stop starman theme
audio_stop_sound(bgm_starman);

//Stop P-Switch music
audio_stop_sound(bgm_pswitch);

