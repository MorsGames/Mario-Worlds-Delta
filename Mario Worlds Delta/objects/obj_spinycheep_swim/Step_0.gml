/// @description Spiny Cheep logic

//Update facing direction
if (hspeed > 0) {

    xscale = 1;
    if (x > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+32)
        instance_destroy();
}
else if (hspeed < 0) {

    xscale = -1;
    if (x < __view_get( e__VW.XView, 0 )-32)
        instance_destroy();
}

//Wave
if (y > ystart)
    vspeed -= 0.0125;
else if (y < ystart)
    vspeed += 0.0125;

