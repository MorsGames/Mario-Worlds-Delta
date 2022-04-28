/// @description Wall collision

if ((hspeed < 0) && (collision_rectangle(bbox_left-1, bbox_top+4, bbox_left, bbox_bottom-4, obj_solid, 1, 0)))
|| ((hspeed > 0) && (collision_rectangle(bbox_right, bbox_top+4, bbox_right+1, bbox_bottom-4, obj_solid, 1, 0)))
    event_user(0);

