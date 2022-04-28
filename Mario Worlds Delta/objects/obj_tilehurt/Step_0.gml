/// @description Fake solid logic

//Inherit event
event_inherited();

//If the player is riding yoshi
if (global.mount == 0) {

    //Check for the player
    var player = collision_rectangle(bbox_left-1, bbox_top-1, bbox_right+1, bbox_bottom+1, obj_playerparent, 0, 0);

    //If the player exists
    if (player)
        with (player) event_user(0);
}

//Otherwise, hurt the player
else {

    //Check for the player
    var player = collision_rectangle(bbox_left-1, bbox_top, bbox_right+1, bbox_bottom+1, obj_playerparent, 0, 0);

    //If the player exists
    if (player)
        with (player) event_user(0);    
}

