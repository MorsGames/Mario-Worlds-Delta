/// @description Shard logic

//Set gravity
if (direction == 90)
    gravity = 0;
else
    gravity = 0.1;

//Destroy if outside the view
if (x < __view_get( e__VW.XView, view_current ) - 16)
|| (y < __view_get( e__VW.YView, view_current ) + 32)
|| (x > __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, 0 ) + 16)
|| (y > __view_get( e__VW.YView, view_current ) + __view_get( e__VW.HView, 0 ) + 16)
    instance_destroy()

