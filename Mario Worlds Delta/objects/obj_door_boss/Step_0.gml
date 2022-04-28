/// @description Boss Door Logic

//If the 'Up' key is pressed
if (input_check_pressed(input.up)) 
&& (image_speed == 0)
&& (image_index == 0) 
&& (lock == 0) {

    //If the player does exist
    if (instance_exists(obj_playerparent)) {
    
        //Check for it
        player = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_playerparent, 0, 0);
        
        //If the player exists
        if (player)
        && (player.state != statetype.jump)
        && (player.state != statetype.climb) {
        
            //Play 'Door' sound
            audio_stop_play_sound(snd_door, 0, false);
            
            //Create a new player object
            warpme = instance_create(player.x, player.y, obj_player_door);
            
            //Facing direction
            warpme.image_xscale = player.xscale;
            
            //Colour
            warpme.isflashing = player.isflashing;
                        
            //Set up destination room
            if (destination != noone) {
            
                warpme.destination = destination;
            }
            
            //Set up door id
            warpme.my_door = id;
            
            //Set up warp parameters
            warpme.exit_type = 0;
            warpme.exit_id = exit_id;
            
            //Destroy player object
            with (obj_playerparent) instance_destroy();

            //Perform warp event
            with (obj_player_door) alarm[0] = 4;
            
        }
    }
}

