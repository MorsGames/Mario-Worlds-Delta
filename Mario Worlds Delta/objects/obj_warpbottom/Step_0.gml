/// @description Check if 'Up' is pressed and the player is below the pipe

//If the 'Up' key is held
if (input_check(input.up)) {

    //If the player does exist
    if (instance_exists(obj_playerparent)) {
    
        //Check for it
        player = collision_rectangle(x+16, y+18, x+16, y+18, obj_playerparent, 0, 0);
        
        //If the player exists
        if (player) 
        && (player.vspeed < 0) {
        
            //Play 'Powerdown' sound
            audio_stop_play_sound(snd_powerdown, 0, false);
        
            //Create a new warp player object
            warpme = instance_create(obj_playerparent.x, y+16, obj_player_warp);
            
            //Facing direction
            warpme.image_xscale = player.xscale;
                        
            //Colour
            warpme.isflashing = player.isflashing;
                        
            //Set up direction
            warpme.direction = 90;
            
            //Set up destination room
            if (destination != noone) {
            
                warpme.destination = destination;
            }
            
            //Start warp
            if (global.powerup != cs_pow_small)
            || (global.mount == 1) {
            
                warpme.y += 16;
                warpme.alarm[0] = 32;
            }
            else
                warpme.alarm[0] = 16;
            
            //Set up warp parameters
            warpme.exit_type = 1;
            warpme.exit_dir = exit_dir;
            warpme.exit_id = exit_id;
            
            //Destroy the player object
            with (obj_playerparent) instance_destroy();
        }
    }
}

