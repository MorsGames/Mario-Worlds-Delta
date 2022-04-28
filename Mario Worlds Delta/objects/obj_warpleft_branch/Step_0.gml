/// @description Check if 'Right' is pressed and the player is next to the pipe

//If the 'Right' key is held
if (input_check(input.right)) {

    //If the player does exist
    if (instance_exists(obj_playerparent)) {
    
        //Check for it
        player = collision_rectangle(x-2, y, x-2, y+31, obj_playerparent, 0, 0);
        
        //If the player exists
        if (player) 
        && (player.gravity == 0) {
        
            //Play 'Powerdown' sound
            audio_stop_play_sound(snd_powerdown, 0, false);
        
            //Create a new warp player object
            warpme = instance_create(x-5, y+16, obj_player_warp);
            
            //Facing direction
            warpme.image_xscale = player.xscale;
                        
            //Colour
            warpme.isflashing = player.isflashing;
                                    
            //Set up direction
            warpme.direction = 0;
            
            //Set up destination room
            if (destination != noone) {
            
                warpme.destination = destination_real;
            }
            
            //Start warp
            warpme.alarm[0] = 32;
            
            //Set up warp parameters
            warpme.exit_type = 1;
            warpme.exit_dir = exit_dir_real;
            warpme.exit_id = exit_id_real;
            
            //Destroy the player object
            with (obj_playerparent) instance_destroy();
        }
    }
}

