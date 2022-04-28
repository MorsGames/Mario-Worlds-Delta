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

//Movement
if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom,obj_up,0,0))
    vspeed -= target_speed;
else if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom,obj_down,0,0))
    vspeed += target_speed;
else if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom,obj_left,0,0))
    hspeed -= target_speed;
else if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom,obj_right,0,0))
    hspeed += target_speed;

