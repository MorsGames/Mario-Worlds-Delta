/// @description The player is spinning with the cape

//Play 'Spin' sound
audio_stop_play_sound(snd_spin, 0, false);

//Animate
image_speed = 0.5;

//Combo
hitcombo = 0;

//Spins
spin = 0;

//Make the player invisible
obj_playerparent.visible = false;

//Initial direction
dir = obj_playerparent.xscale;

