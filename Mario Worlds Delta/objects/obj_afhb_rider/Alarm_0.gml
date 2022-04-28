/// @description Throw a hammer

//If not outside the view
if (!outside_view(16)) {

    //Play 'Hammer' sound
    audio_play_sound(snd_hammer, 0, false);
    
    //Reverse facing direction
    xscale = -xscale;
    
    //Create a hammer
    with (instance_create(x+8*sign(xscale), y, obj_hammerbro_hammer))
        hspeed = 1*other.xscale;
}

//Throw another hammer.
alarm[0] = time;

