/// @description A coin that came out from a block

//Play 'Coin' sound
audio_stop_play_sound(snd_coin, 0, false);

//Increment controller and warp branch coins
with (obj_controller) coins++;
with (obj_warpparent) coins++;

//Increment coins
global.coins++;

//Set the vertical speed
vspeed = -3.5;
gravity = 0.2;

//Animate
image_speed = 0.3;

