/// @description Create bubble effects

alarm[1] = 7;
if (push)
&& (instance_exists(obj_playerparent))
    instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ), random_range(y+16, room_height), obj_bubble_h);

