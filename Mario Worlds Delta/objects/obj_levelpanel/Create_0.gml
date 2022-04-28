/// @description Level Panel

/*
//  This object uses creation code
//
//      levelname   = Level of the name (Prints on HUD)
//      normalexit  = Normal exit direction
//      secretexit  = Secret exit direction
//      target      = Destination room
*/

//Default variables
levelname = "NO NAME SET!";
normalexit = -1;
secretexit = -1;
target = rm_level_1a;

//Animate
image_speed = 0.15;

//Checkpoint
checkpoint = noone;
alarm[0] = 1;

//Ready
ready = 0;

//Panel type
paneltype = 0;

//Was the level beaten
beaten = 0;

//Alpha
image_alpha = 0;

//Set up custom level panels
alarm[4] = 1;

//If there's a modifier on this path
if (ds_map_exists(global.worldmap, id))
|| (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_modifier, 1, 0)) {

    image_alpha = 1;
    if (!ds_map_exists(global.worldmap, id))
        ds_map_add(global.worldmap, id, 1);
}

/* */
/*  */
