/// @description Go to credits

//Play 'Correct' sound
audio_stop_play_sound(snd_correct, 0, false);    

//Stop the stream...
audio_stop_sound(global.stream);

//...and free it from memory
audio_destroy_stream(global.stream);
global.stream = noone;

//Disable pixelation
with (obj_controller) {

    pixelate = 60;
}

//Go to the engine test
room_goto(rm_credits);

