/// @description Shot the player like in a cannon

//Play 'Explosion' sound
audio_stop_play_sound(snd_explosion, 0, false);

//Create smoke particles based on cannon direcion
switch (cannon) {

    //Right
    case (1): {
    
        repeat (16) {
        
            with (instance_create(x, y, obj_smoke)) {
            
                sprite_index = spr_smoke_16;
                depth = 11;
                motion_set(random_range(60, 30), random(6));
            }
        }
    } break;
    
    //Left
    case (-1): {
    
        repeat (16) {
        
            with (instance_create(x, y, obj_smoke)) {
            
                sprite_index = spr_smoke_16;
                depth = 11;
                motion_set(random_range(150, 120), random(6));
            }
        }
    } break;
}

//Set up the player state
player.state = statetype.jump;

//Enable player gravity
player.alarm[7] = 32;

//Make the player run
player.pmeter = 112;
player.run = 1;

//Set player vertical speed
player.vspeed = -4;

//Set player horizontal speed
player.hspeed = 4*sign(cannon);

