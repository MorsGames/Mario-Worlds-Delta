/// @description Yoshi fireball logic

//Destroy when outside the view
if (x < __view_get( e__VW.XView, 0 )-32)
|| (x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+32)
|| (y > __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+32)
    instance_destroy();

