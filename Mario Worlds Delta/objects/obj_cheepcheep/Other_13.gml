/// @description Default wall collisions.

if ((hspeed < 0) && (collision_rectangle(bbox_left-hspeed, bbox_top+4, bbox_left, bbox_bottom-4,obj_solid,0,0)))
|| ((hspeed > 0) && (collision_rectangle(bbox_right, bbox_top+4, bbox_right+hspeed, bbox_bottom-4,obj_solid,0,0))) {

    //Reverse horizontal speed
    hspeed = hspeed*-1;
    
    //Reverse facing direction
    xscale = xscale*-1;
    
    //Prevent getting embed on a slope.
    while (collision_rectangle(bbox_left, bbox_top+4, bbox_left, bbox_bottom-4,obj_solid,0,0))
        x++;
    while (collision_rectangle(bbox_right, bbox_top+4, bbox_right, bbox_bottom-4,obj_solid,0,0))
        x--;        
}

