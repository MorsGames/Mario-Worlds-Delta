/// @description Generate a cloud

//Generate another cloud
alarm[11] = round(random(120)) + 120;

//Generate current cloud
if (choose(0,1) == 1)
    instance_create(__view_get( e__VW.XView, 0 )-16, __view_get( e__VW.YView, 0 )-16, obj_mapcloud);
else
    instance_create(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ), obj_mapcloud);

