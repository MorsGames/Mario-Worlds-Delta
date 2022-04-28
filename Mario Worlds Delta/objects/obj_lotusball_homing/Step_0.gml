/// @description Lotus fireball logic

//Cap vertical speed or apply gravity
if (ready == 1) {

    speed += 0.0125;
    if (speed > 3)
        speed = 3;
}

//Destroy if outside the view
if (x < __view_get( e__VW.XView, 0 )-32)
|| (y < __view_get( e__VW.YView, 0 )-32)
|| (x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+32)
|| (y > __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+32)
    instance_destroy();

