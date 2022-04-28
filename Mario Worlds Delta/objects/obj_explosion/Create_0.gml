/// @description Explosion

//Play 'Explosion' sound
audio_stop_play_sound(snd_explosion, 0, false);

//Combo
hitcombo = 0;

//Hurt Player?
//0: No
//1: Yes
hurtplayer = 1;

//Destroy
alarm[0] = 48;

//Generate star effect
alarm[1] = 1;

//Disallow player hurt
alarm[3] = 4;

