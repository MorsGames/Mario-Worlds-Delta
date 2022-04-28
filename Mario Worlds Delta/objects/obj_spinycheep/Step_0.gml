/// @description Generator Cheep logic

//Cap vertical speed
if (vspeed > 4) {

    vspeed = 4;
    if (y > __view_get( e__VW.YView, view_current ) + __view_get( e__VW.WView, view_current ) + 32)
        instance_destroy();       
}

//Facing direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

