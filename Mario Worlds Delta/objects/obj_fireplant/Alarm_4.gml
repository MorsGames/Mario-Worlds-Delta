/// @description Spit fireball

//Play 'Burn' sound
audio_stop_play_sound(snd_burn, 0, false);

//Create fireball
fire = instance_create(x, y, obj_plantfire);
fire.direction = direct;

//Spit another fireball
alarm[5] = 60;

