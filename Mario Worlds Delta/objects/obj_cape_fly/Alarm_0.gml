/// @description Leave a smoke trail when in ground

alarm[0] = 4;
if (gravity == 0)
    instance_create(x, bbox_bottom, obj_smoke);

