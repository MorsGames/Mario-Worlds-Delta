/// @description Handle tile movement

//Check how many tiles are in the given depth
var tiles = tile_get_ids_at_depth(target_depth);

//Make the tiles move at the same speed
for (var i = 0; i < array_length_1d(tiles); i++) {

    xx = tile_get_x(tiles[i])
    yy = tile_get_y(tiles[i])
    tile_set_position(tiles[i], xx + hspeed, yy + vspeed);
}

//Manage collision position
event_user(0);

//Check for the player
player = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_playerparent, 0, 0);

//If not falling
if (ready == 0) {

    //If there's a player in position
    if (player)
    && (player.state != statetype.jump)
        ready = 1;
}

//Otherwise, if falling
else {

    //Increment vspeed
    vspeed += 0.00405;
    
    //Cap vertical speed
    if (vspeed > 1)
        vspeed = 1;
}

