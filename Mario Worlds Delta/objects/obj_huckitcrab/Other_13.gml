/// @description Custom wall collision

//Move away from walls
if ((hspeed < 0) && (collision_rectangle(bbox_left+hspeed, bbox_top+4, bbox_left+hspeed, bbox_bottom-1, obj_solid, 0, 0)))
    x += 0.5;
if ((hspeed > 0) && (collision_rectangle(bbox_right+hspeed, bbox_top+4, bbox_right+hspeed, bbox_bottom-1, obj_solid, 0, 0)))
    x -= 0.5; 

