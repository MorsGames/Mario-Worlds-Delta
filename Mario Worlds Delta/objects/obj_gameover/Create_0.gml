/// @description Your game is over, press 'Any' key to continue!

//Play 'Game Over' track
audio_stop_play_sound(bgm_gameover, 0, false);

//Do not animate
image_speed = 0;
image_index = 0;

//Restart
alarm[0] = 360;

//Text X
text_x = 192;

