/// @description If there's a solid or there's no water, destroy

if (place_meeting(x, bbox_top-1, obj_solid))
|| (!place_meeting(x, bbox_top-1, obj_swim))
    instance_destroy();

