/// @description Start warp sequence

//If the door is not an outline
if (sprite_index != spr_door_p_outline) {

    //Stop animation
    image_speed = 0;
    image_index = 2;
    
    //Perform warp event
    with (obj_player_door) alarm[0] = 32;
}

