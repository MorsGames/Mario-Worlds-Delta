/// @description Make noise when charging

//Repeat the process
alarm[0] = 6;

//If the chuck is on lookout mode
if (lookout == 1) 
&& (gravity == 0) {
    
    //If chargin, play 'Bump' sound
    if (sprite_index == spr_charginchuck_walk)
        audio_stop_play_sound(snd_bump, 0, false);
}

