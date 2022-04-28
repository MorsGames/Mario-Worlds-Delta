/// @description Kick the generated ball

//If the chuck is at full health
if (hp == 3) {

    //Play 'Kick' sound
    audio_stop_play_sound(snd_kick, 0, false);
    
    //Set kicking frame
    image_speed = 0;
    image_index = 1;
    alarm[2] = 30;
    
    //Do not show ball
    ready = 2;
    
    //Kick another one
    alarm[0] = 90;
    
    //Generate kick effect
    with (instance_create(x+18*sign(xscale), y+8, obj_smoke)) sprite_index = spr_spinthump;
    
    //Generate a ball
    with (instance_create(x+18*sign(xscale), y, obj_football)) {
    
        hspeed = 1.5*sign(other.xscale);
        y--;
        vspeed = -2;
    }
}
else
    event_inherited();

