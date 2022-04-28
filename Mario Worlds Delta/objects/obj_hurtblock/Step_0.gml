/// @description Check for the player and hurt him

//If the player is riding yoshi
if (global.mount == 0) {

    //Check for the player
    var player = collision_rectangle(bbox_left-1, bbox_top-1, bbox_right+1, bbox_bottom+1, obj_playerparent, 0, 0);

    //If the player exists
    if (player)
        with (player) event_user(0);
}

//Otherwise
else {

    //Check for the player
    var player = collision_rectangle(bbox_left-1, bbox_top, bbox_right+1, bbox_bottom+1, obj_playerparent, 0, 0);

    //If the player exists
    if (player)
    && (player.y > bbox_top-11)
        with (player) event_user(0);    
}

