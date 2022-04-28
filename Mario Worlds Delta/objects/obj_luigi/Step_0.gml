/// @description Luigi's logic

//Inherit event from parent
event_inherited();

//Play 'Scuttle' sound when in-air
if (instance_exists(obj_playerparent)) {

    if (state == statetype.jump)
    && (swimming == false)
    && (crouch == false)
    && (image_speed != 0)
    && (run = false || holding = true)
    && (jumpstyle == 0)
    && (global.mount == 0)
    && !(instance_exists(obj_cape_fly))
    && (instance_exists(obj_levelcontrol)) {
    
        //If the 'Scuttle' sound is not playing
        if (!audio_is_playing(snd_scuttle)) {
        
            //Play 'Scuttle' sound
            audio_stop_play_sound(snd_scuttle, 0, false);
            
            //Set 'Scuttle' gain and pitch.
            audio_sound_gain(snd_scuttle, random_range(0.9, 1.0), 0);
            audio_sound_pitch(snd_scuttle, choose(0.9, 1.0, 1.1));
        }
    }
    else
        audio_stop_sound(snd_scuttle);
    
}

