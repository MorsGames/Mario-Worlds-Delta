/// @description Floor / Ceiling collision

//Check for floor objects
if (vspeed > 0)
&& (collision_rectangle(bbox_left, bbox_bottom+1, bbox_right, bbox_bottom+1, obj_semisolid, 0, 0))
|| (collision_rectangle(bbox_left, bbox_bottom+1, bbox_right, bbox_bottom+1, obj_slopeparent, 1, 0))
    event_user(0)

//Check for ceiling objects
if (vspeed < 0)
&& (collision_rectangle(bbox_left, bbox_top-1, bbox_right, bbox_top, obj_solid, 1, 0)) 
|| (collision_rectangle(bbox_left, bbox_top-1, bbox_right, bbox_top, obj_slopeparent_ceiling, 1, 0))
    event_user(0);

