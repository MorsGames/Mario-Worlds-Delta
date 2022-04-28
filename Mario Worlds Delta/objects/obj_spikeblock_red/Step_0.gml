/// @description Hurt the player if the spikes are shown

if (image_index > 1) {

    //Check for the player
    var player = collision_rectangle(bbox_left-1, bbox_top-1, bbox_right+1, bbox_bottom+1, obj_playerparent, 0, 0);
    
    //If the player exists, hurt him
    if (player)
        with (player) event_user(0);
}

