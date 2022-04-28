/// @description Green Switch Palace

//Level Name
levelname = "GREEN SWITCH PALACE";

//Do not animate
image_speed = 0;

//Effect
eff = 8;

//Ready
ready = 0;

//Panel type
paneltype = 2;

//Was the level beaten
beaten = 0;

//Alpha
image_alpha = 0;

//If there's a modifier on this path
if (ds_map_exists(global.worldmap, id))
|| (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_modifier, 1, 0)) {

    //Turn visible
    image_alpha = 1;
    
    //If the data storage list does not exist, add it
    if (!ds_map_exists(global.worldmap, id))
        ds_map_add(global.worldmap, id, 1);
        
    //Otherwise
    else {
        
        //If this switch has been pressed before, make it visible for the player
        if (ds_map_find_value(global.worldmap, id) == 2) {
        
            image_speed = 0;
            image_index = 1;
            beaten = 2;
        }
    }
}

