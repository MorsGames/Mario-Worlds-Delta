/// @description Shake 'Time Left' marker

alarm[0] = 2;
if (audio_is_playing(snd_hurry)) {

    shakex = random_range(-1,1);
    shakey = random_range(-1,1);
}
else {

    shakex = 0;
    shakey = 0;
}

