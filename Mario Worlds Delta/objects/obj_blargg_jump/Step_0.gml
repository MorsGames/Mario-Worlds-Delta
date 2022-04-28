/// @description Blargg logic

//Set facing direction
xscale = 1*sign(hspeed);

//Cap vertical speed
if (vspeed > 4) {

    vspeed = 4;
    gravity = 0;
}
    
//Destroy if below the view
if (y > __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+32)
    instance_destroy();

