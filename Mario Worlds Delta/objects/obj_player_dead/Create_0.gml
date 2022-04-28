/// @description A heroic death

//Set the pre-freeze image
create_prefreeze_surface();

//Set up sprite based on player
switch (global.player) {

    //Luigi
    case (1): sprite_index = spr_luigi_dead; break;
    
    //Toad
    case (2): sprite_index = spr_toad_dead; break;
    
    //Peach
    case (3): sprite_index = spr_peach_dead; break;
}

//Play 'Player Down' sound
audio_stop_play_sound(bgm_death, 0, false);

//Stop rest of music
audio_stop_sound(bgm_starman);
audio_stop_sound(bgm_pswitch);

//Do not animate
image_speed = 0;
image_index = 0;

//Subtract a life
lives--;

//Back
back = -1;

//Reset mount
global.mount = 0;
global.mountcolour = 0;

//Reset powerup
global.powerup = cs_pow_small;

//Stop both music and timer
with (obj_levelcontrol) {

    musicdisable = true;
    alarm[1] = 1;
    alarm[2] = -1;
    alarm[3] = -1;
    alarm[4] = -1;
}

//Destroy Yoshi
with (obj_yoshi) {

    global.mount = 0;
    if (state == yoshistate.ridden)
        instance_destroy();
}

//Make following objects invisible
with (obj_water_tides) visible = 0;
with (obj_lightparent) visible = 0;
with (obj_lightcontrol) visible = 0;
with (obj_effectsparent) visible = 0;
with (obj_rainmaker) visible = 0;

//Freeze everything on screen
alarm[0] = 2;

//Move up if not outside the view
alarm[1] = 40;

//Return to retry screen
alarm[2] = 202;

