/// @description Manage offset

if ((hp == 3) && (split == 0)) {

    //Play 'Beam' sound
    audio_stop_play_sound(snd_beam, 0, false);
    
    //Split done
    split = 1;
    
    //Begin move
    alarm[10] = 60;
    
    //Create two chucks
    with (instance_create(x, y, obj_charginchuck)) {
    
        //Set the jumping sprite
        sprite_index = spr_charginchuck_jump;
    
        //Set the horizontal speed
        hspeed = -1;
        
        //Boost jump
        y--;
        
        //Set the vertical speed
        if (other.swimming)
            vspeed = -2;
        else
            vspeed = -4;
    }
    with (instance_create(x, y, obj_charginchuck)) {

        //Set the jumping sprite
        sprite_index = spr_charginchuck_jump;    
       
        //Set the horizontal speed
        hspeed = 1;
        
        //Boost jump
        y--;
        
        //Set the vertical speed
        if (other.swimming)
            vspeed = -2;
        else
            vspeed = -4;
    }
}

//Otherwise, inherit default event
else
    event_inherited();

