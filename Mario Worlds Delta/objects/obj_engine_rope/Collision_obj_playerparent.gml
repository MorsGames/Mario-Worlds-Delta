/// @description Make the player move

//If the player is climbing
if (obj_playerparent.state == statetype.climb) {

    //If the player is not 
    if (!collision_rectangle(obj_playerparent.bbox_left, obj_playerparent.bbox_top+4, obj_playerparent.bbox_right+1, obj_playerparent.bbox_bottom-1, obj_solid, 1, 1)) 
    && (!collision_rectangle(obj_playerparent.bbox_left, obj_playerparent.bbox_top+4, obj_playerparent.bbox_right+1, obj_playerparent.bbox_bottom-1, obj_solid_moving, 1, 1)) {
    
        obj_playerparent.x += parent.x-parent.xprevious;
        obj_playerparent.y += parent.y-parent.yprevious;
    }
        
    //Make the engine move if it is not moving
    if (ison == 0)
        ison = 1;
}

