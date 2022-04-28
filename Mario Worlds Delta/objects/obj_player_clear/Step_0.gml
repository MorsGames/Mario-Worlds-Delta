/// @description Goal player logic

//Inherit step event
event_inherited();

//Close curtain and go to map
if (ready3 == 1)
&& (fireworks == 0)
&& (global.time == 0)
&& (global.bonusadd == 0)
&& (!audio_is_playing(snd_goalgate_2))
&& (!audio_is_playing(snd_goalgate_special)) {

    //Close curtain
    ready3 = 2;
    
    //Create curtain effect
    instance_create(0, 0, obj_goal_curtain);
}

//Make the screen fade out
if (ready2 == 1) {

    //If the fade object exists
    if (instance_exists(obj_goal_fade))
        with (obj_goal_fade) fade = 2;
}

//Increment speed
if (ready3 == 2) {

    //Build up some speed
    hspeed += 0.0324;
    
    //Prevent it from going too fast
    if (hspeed > 1.75)
        hspeed = 1.75;
}

///Play the countdown sounds

//Play 'Count' sounds
if (ready4 == 1) {

    //If the timer is greater than 0
    if (global.time > 0) 
    || (global.bonusadd > 0) {
    
        ready4 = 2;
        audio_stop_play_sound(snd_count, 0, false);
        audio_stop_play_sound(snd_count2, 0, true);
    }
    else    
        ready4 = 3;
}
else if ((global.time < 1) && (global.bonusadd == 0) && (ready4 == 2)) {

    ready4 = 3;
    audio_stop_sound(snd_count2);
    audio_stop_play_sound(snd_count3, 0, false);
}    

