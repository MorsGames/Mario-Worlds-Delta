/// @description Jump towards the player

//Play 'Trampoline' sound
audio_stop_play_sound(snd_trampoline, 0, false);

//Set vertical speed
vspeed = -6;

//Boost jump
y--;

//Reset offset
offset = 0;

//Set jump state
jumping = 2;

//Set jumping frame
image_index = 2;

//If the player does not exist or it's at the left
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    hspeed = -2.1;
else
    hspeed = 2.1;

