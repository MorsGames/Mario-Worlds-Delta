/// @description Jump or make noise when charging

if (hp == 3) {

    //Set the jumping sprite
    sprite_index = spr_clappinchuck_jump;
    
    //Do not animate
    image_speed = 0;
    image_index = 0;
    
    //Gravity
    gravity = 0.15;
    
    //If the player exists
    if (instance_exists(obj_playerparent)) {
    
        //If the player is on the air
        if (obj_playerparent.state == statetype.jump) {
        
            //Play 'Trampoline' sound
            audio_play_sound(snd_trampoline, 0, false);
            
            //Set the vertical speed
            vspeed = -3.5;
            y--;
            
            //Clap
            clap = 1;
        }
        else {
        
            vspeed = -1.75;
            y--;
        }
    }
    else {
    
        vspeed = -1.75;
        y--;
    }
}

//Otherwise, inherit default event
else
    event_inherited();

