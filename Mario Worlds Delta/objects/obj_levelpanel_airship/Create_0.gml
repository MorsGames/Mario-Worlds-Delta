/// @description Map Castle Level Panel

//Inherit event
event_inherited();

//Panel type
paneltype = 1;
blownup = false;

//Do not animate
image_speed = 0.2;

//Always stay visible regardless of whether it was unlocked
image_alpha = 1;

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
        
            //Set sprite
            alarm[3] = 1;
            image_speed = 0;
            beaten = 2;
        }
    }
}

//X Speed
xsp = 0;

//Offset
xoffset = 0;
yoffset = 0;

//Timer
timer = 0;

//Manage offset
xscale = 1;

