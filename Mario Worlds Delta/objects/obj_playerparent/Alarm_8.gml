/// @description Generate bubble effect

alarm[8] = 60+random_range(-30, 30)
if (swimming == true)
    instance_create(x, bbox_top, obj_bubble)

