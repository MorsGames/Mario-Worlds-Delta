/// @description Shard logic

//Cap horizontal speed
hspeed = 1*sign(hspeed);

//Set gravity
gravity = 0.2;

//Destroy when outside the view
if (x < __view_get( e__VW.XView, view_current )-8)
|| (x > __view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )+8)
|| (y > __view_get( e__VW.YView, view_current )+__view_get( e__VW.HView, view_current )+8)
    instance_destroy();

