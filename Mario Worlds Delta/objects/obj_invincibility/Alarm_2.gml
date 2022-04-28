/// @description Play invincibility music

//End level music and reset global.music
obj_levelcontrol.alarm[1] = 1;

//Play 'Starman' theme
if (!audio_is_playing(bgm_pswitch))
&& (!audio_is_playing(bgm_starman))
    audio_stop_play_sound(bgm_starman, 0, true);

