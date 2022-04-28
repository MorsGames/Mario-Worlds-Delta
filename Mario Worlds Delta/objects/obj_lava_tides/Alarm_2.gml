/// @description Generate cinder, but when visible

//Repeat
alarm[2] = 15+round(random_range(0, 15));

//Generate
if (sprite_index == spr_lava)
    instance_create(random_range(__view_get( e__VW.XView, 0 )+4, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 4), y, obj_blob);

