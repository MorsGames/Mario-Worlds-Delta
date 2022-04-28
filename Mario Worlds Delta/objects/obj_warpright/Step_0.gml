/// @description Check if 'Left' is pressed and the player is next to the pipe

//If the 'Left' key is held
if (input_check(input.left)) {

    //If the player does exist
    if (instance_exists(obj_playerparent)) {
    
        //Check for it
        player = collision_rectangle(x+18, y, x+18, y+31, obj_playerparent, 0, 0);
        
        //If the player exists
        if (player) 
        && (player.gravity == 0) {
        
            //Play 'Powerdown' sound
            audio_stop_play_sound(snd_powerdown, 0, false);
        
            //Create a new warp player object
            warpme = instance_create(x+21, y+16, obj_player_warp);
            
            //Facing direction
            warpme.image_xscale = player.xscale;
                        
            //Colour
            warpme.isflashing = player.isflashing;
                                    
            //Set up direction
            warpme.direction = 180;
            
            //Set up destination room
            if (destination != noone) {
            
                warpme.destination = destination;
            }
            
            //Start warp
            warpme.alarm[0] = 32;
            
            //Set up warp parameters
            warpme.exit_type = 1;
            warpme.exit_dir = exit_dir;
            warpme.exit_id = exit_id;
            
            //Destroy the player object
            with (obj_playerparent) instance_destroy();
        }
    }
}

