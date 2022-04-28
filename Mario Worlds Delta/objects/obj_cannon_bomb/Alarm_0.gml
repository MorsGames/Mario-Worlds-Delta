/// @description Shoot a cannonball

//If the player does not exist
if (!instance_exists(obj_playerparent)) {

    alarm[0] = 1;
    exit;
}

//Play 'Explosion' sound
audio_stop_play_sound(snd_explosion, 0, false);

//Direction
switch (direct) {

    //Right
    default: {
    
        //Smoke
        with (instance_create(x+16, y, obj_smoke)) sprite_index = spr_smoke_16;
        
        //Create bomb
        with (instance_create(x+16, y-8, obj_bobomb_cannon)) {
        
            vspeed = -3.5;
            hspeed = 1;
        }
    } break;
    
    //Left
    case (-1): {
    
        //Smoke
        with (instance_create(x, y, obj_smoke)) sprite_index = spr_smoke_16;
        
        //Create bomb
        with (instance_create(x, y-8, obj_bobomb_cannon)) {
        
            vspeed = -3.5;
            hspeed = -1;
        }            
    } break;
}

//Repeat after 3 seconds
alarm[0] = 180;

