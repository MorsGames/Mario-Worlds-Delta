/// @description Begin goal sequence

if (image_alpha == 1) 
&& (gravity == 0) {

    //Make invisible
    image_alpha = 0;

    //Set the pre-freeze image
    create_prefreeze_surface()

    //Play 'Boss Clear' theme
    audio_stop_play_sound(snd_bossclear, 0, false);
    
    //Stop P-Switch and Starman music
    audio_stop_sound(bgm_pswitch);
    audio_stop_sound(bgm_starman);
    
    //Stop both music and timer
    with (obj_levelcontrol) {
    
        musicdisable = true;
        alarm[1] = 1;
        alarm[2] = -1;
        alarm[3] = -1;
        alarm[4] = -1;
    }
    
    //Set clear state
    global.clear = 1;
    
    //Remember yoshi colour
    if (global.mount == 1) {
    
        global.mountcolour = obj_yoshi.colour;
    }
    
    //Make following objects invisible
    with (obj_hud) visible = 0;
    with (obj_water) visible = 0;
    with (obj_water_tides) visible = 0;
    with (obj_lightparent) visible = 0;
    with (obj_lightcontrol) visible = 0;
    with (obj_effectsparent) visible = 0;
    with (obj_rainmaker) visible = 0;
    
    //Begin deactivation sequence
    alarm[1] = 2;
}

