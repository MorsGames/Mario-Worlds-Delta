/// @description Check boundaries

//Collision with left wall
if ((collision_line(bbox_left-1, bbox_top+2, bbox_left-1, bbox_bottom, obj_solid, 0, 0)) || (collision_line(bbox_left-1, bbox_top+2, bbox_left-1, bbox_bottom, obj_solid_moving, 0, 0)))
    l = 1;
else
    l = 0;
    
//Collision with right wall
if ((collision_line(bbox_right+2, bbox_top+2, bbox_right+2, bbox_bottom, obj_solid, 0, 0)) || (collision_line(bbox_right+2, bbox_top+2, bbox_right+2, bbox_bottom, obj_solid_moving, 0, 0)))
    r = 1;
else
    r = 0;

//Collision with ceiling
if ((collision_line(bbox_left+1, bbox_top-1, bbox_right-2, bbox_top-1, obj_solid, 0, 0)) || (collision_line(bbox_left+1, bbox_top-1, bbox_right-2, bbox_top-1, obj_solid_moving, 0, 0)))
    t = 1;
else
    t = 0;
    
//Collision with floor
if ((collision_line(bbox_left+1, bbox_bottom+1, bbox_right-2, bbox_bottom+1, obj_semisolid, 0, 0)) || (collision_point(x, bbox_bottom+1, obj_slopeparent, 1, 0)) || (collision_line(bbox_left+1, bbox_bottom+1, bbox_right-2, bbox_bottom+1, obj_semisolid_moving, 0, 0)))
    b = 1;
else
    b = 0;

