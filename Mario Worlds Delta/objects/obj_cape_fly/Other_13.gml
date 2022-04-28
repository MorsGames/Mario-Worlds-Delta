/// @description Default wall collision

//If moving right and the player bumps a wall to the right
if (hspeed > 0) {

    //Collision with non-moving solid objects
    if (collision_rectangle(bbox_right, bbox_top+4, bbox_right+1, bbox_bottom-4-(slope*4), obj_solid, 1, 0)) {
        
        //Stop horizontal speed
        hspeed = 0;    
        
        //Prevent the player from getting embed in the wall
        while (collision_rectangle(bbox_right, bbox_top+4, bbox_right, bbox_bottom-1, obj_solid, 1, 0))
        && (!collision_point(x, bbox_top+4, obj_solid, 0, 0))
            x--;
    }
    
    //Collision with moving solid objects
    else if (collision_rectangle(bbox_right, bbox_top+4, bbox_right+1, bbox_bottom-4, obj_solid_moving, 1, 0)) {
        
        //Stop horizontal speed
        hspeed = 0;    
        
        //Prevent the player from getting embed in the wall
        while (collision_rectangle(bbox_right, bbox_top+4, bbox_right, bbox_bottom-1, obj_solid_moving, 1, 0))
        && (!collision_point(x, bbox_top+4, obj_solid, 0, 0))
            x--;
    }
}

//Otherwise, if moving left and the player bumps a wall to the left
else if (hspeed < 0) {

    //Collision with non-solid moving objects
    if (collision_rectangle(bbox_left-1, bbox_top+4, bbox_left, bbox_bottom-4-(slope*4), obj_solid, 1, 0)) {
        
        //Stop horizontal speed
        hspeed = 0;    
        
        //Prevent the player from getting embed in the wall
        while (collision_rectangle(bbox_left, bbox_top+4, bbox_left, bbox_bottom-1, obj_solid, 1, 0))
        && (!collision_point(x, bbox_top+4, obj_solid, 0, 0))    
            x++;
    }
    
    //Collision with moving solid object
    if (collision_rectangle(bbox_left-1, bbox_top+4, bbox_left, bbox_bottom-4, obj_solid_moving, 1, 0)) {
        
        //Stop horizontal speed
        hspeed = 0;    
        
        //Prevent the player from getting embed in the wall
        while (collision_rectangle(bbox_left, bbox_top+4, bbox_left, bbox_bottom-1, obj_solid_moving, 1, 0))
        && (!collision_point(x, bbox_top+4, obj_solid_moving, 0, 0))    
            x++;
    }
}

