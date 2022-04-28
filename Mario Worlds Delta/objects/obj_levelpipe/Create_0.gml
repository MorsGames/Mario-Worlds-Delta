/// @description Pipe Panel (Warp the player to a different location)
/// @param Warp the player to a different location

/*
//  This object uses creation code
//
//      target_id   = ID of the destination pipe
//      
//      To obtain the ID of the destination pipe, right click the object and click 'Copy Instance Name'
*/

//Default variables
levelname = "WARP PIPE";
target_id = noone;

//Animate
image_speed = 0.15;

//Ready
ready = 0;

//Was the level beaten
beaten = 0;

//Alpha
image_alpha = 1;

//If there's a modifier on this path
if (ds_map_exists(global.worldmap, id))
|| (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_modifier, 1, 0))
    if (!ds_map_exists(global.worldmap, id))
        ds_map_add(global.worldmap, id, 1);

/* */
/*  */
