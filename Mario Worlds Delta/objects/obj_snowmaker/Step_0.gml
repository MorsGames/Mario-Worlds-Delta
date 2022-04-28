/// @description Generate snow drops

with (instance_create(random_range(__view_get( e__VW.XView, view_current )-global.gw, __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current )+global.gw), __view_get( e__VW.YView, view_current )-5, obj_snow))
    depth = round(random_range(-6,9));

