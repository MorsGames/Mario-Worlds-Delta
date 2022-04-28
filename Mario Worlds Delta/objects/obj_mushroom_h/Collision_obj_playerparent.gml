/// @description Generate a mushroom when touched

//If not active, activate it.
if (ready == 0) {

    //Play 'Powerup' sound
    audio_stop_play_sound(snd_sprout, 0, false);

    //Activate it...
    ready = 1;
    
    //...and generate a 1-up
    if (other.x < x+8) {
    
        with (instance_create(x+8, obj_playerparent.bbox_top-16, obj_mushroom)) {
        
            hspeed = 1;
            vspeed = -4;
        }
    }
    else if (other.x > x+8) {
    
        with (instance_create(x+8, obj_playerparent.bbox_top-16, obj_mushroom)) {
        
            hspeed = -1;
            vspeed = -4;
        }
    }
}

