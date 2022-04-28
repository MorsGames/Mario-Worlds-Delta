/// @description Debris logic

//Cap vertical speed
if (vspeed > 4) {

    vspeed = 4;
    gravity = 0;
}

//Angle
angle -= 10*sign(hspeed);

//Destroy if outside the view
if (x < __view_get( e__VW.XView, 0 )-16)
|| (x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+16)
|| (y > __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+16)
    instance_destroy();

