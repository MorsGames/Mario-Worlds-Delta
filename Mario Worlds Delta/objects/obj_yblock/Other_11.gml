/// @description Allow block to be hit again and swap blocks

//Allow block hit
ready = 0;

//If yoshi does exist
if (instance_exists(obj_yoshi)) {

    //If yoshi's state is idle
    if (obj_yoshi.state == yoshistate.idle) {
    
        //Play 'Beam' sound
        audio_play_sound(snd_beam, 0, false);

        //Create smoke
        with (instance_create(x+8, y-8, obj_smoke)) sprite_index = spr_smoke_16;
        
        //Make the present yoshi appear above this block
        with (obj_yoshi) {
        
            x = other.x+8;
            y = other.bbox_top-16;
        }
    }
    else
        audio_play_sound(snd_wrong, 0, false);
}
else
    audio_play_sound(snd_wrong, 0, false);

