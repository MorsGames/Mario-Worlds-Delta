/// @description Coin Snake

//Play 'Sprout' sound
audio_stop_play_sound(snd_sprout, 0, false);

//Play 'P-Switch' music
audio_loop_sound(bgm_pswitch, 468000, 535500, 44100, 1);

//Stop music
obj_levelcontrol.alarm[1] = 1;

//Stop invincibility music
audio_stop_sound(bgm_starman);

//Animate
image_speed = 0.15;

//Go up
vspeed = -1;

//Direction
nextdir = 90;

//Start creating coins / bricks every 16 pixels
alarm[0] = 16;

//Change depth
alarm[1] = 16;

//Stop the coin chain if it goes on for too long
alarm[2] = 1024;

