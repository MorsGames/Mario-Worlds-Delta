/// @description Door logic

//If the 'Up' key is pressed
if (input_check_pressed(input.up))
&& (sprite_index == spr_door_p) 
&& (image_speed == 0)
&& (image_index == 0) {

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
            
            //Animate the door
            image_speed = 0.2;
            
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
        }
    }
}

//Set up outline animation when p-switch effect is off and the door is not opening
if (sprite_index == spr_door_p)
&& (image_speed == 0)
&& (image_index == 0)
&& (obj_controller_level.switchon == 0) {

    sprite_index = spr_door_p_outline;
    image_speed = 0.1;
}

