/// @description Special wall collision

//If moving right and the NPC bumps a wall to the right
if (hspeed > 0) 
&& ((collision_rectangle(bbox_right, bbox_top+5, bbox_right+1, bbox_bottom-4-(slope*4), obj_solid, 1, 0))
|| (collision_rectangle(bbox_right, bbox_top+5, bbox_right+1, bbox_bottom-4-(slope*4), obj_slope_steeper_r, 1, 0))) {
    
    //Stop horizontal movement if stunned
    if (ready == 0)
        hspeed = 0;
        
    //Otherwise...
    else {
    
        //Turn around
        hspeed = -hspeed;
    
        //Prevent the NPC from getting embed in the wall
        while (collision_rectangle(bbox_right, bbox_top+5, bbox_right, bbox_bottom-1, obj_solid, 1, 0))
        && (!collision_point(x, bbox_top+4, obj_solid, 0, 0))
            x--;
    }
}

//Otherwise, if moving left and the NPC bumps a wall to the left
else if (hspeed < 0)
&& ((collision_rectangle(bbox_left-1, bbox_top+5, bbox_left, bbox_bottom-4-(slope*4), obj_solid, 1, 0))
|| (collision_rectangle(bbox_left-1, bbox_top+5, bbox_left, bbox_bottom-4-(slope*4), obj_slope_steeper_l, 1, 0))) {
    
    //Stop horizontal movement if stunned
    if (ready == 0)
        hspeed = 0;
        
    //Otherwise
    else {
    
        //Turn around
        hspeed = -hspeed;
        
        //Prevent the NPC from getting embed in the wall
        while (collision_rectangle(bbox_left, bbox_top+5, bbox_left, bbox_bottom-1, obj_solid, 1, 0))
        && (!collision_point(x, bbox_top+4, obj_solid, 0, 0))
            x++;
    }
}

