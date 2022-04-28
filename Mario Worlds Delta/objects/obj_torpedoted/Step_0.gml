/// @description Torpedo Ted logic

//If moving right...
if (xscale > 0) {

    //Increment speed
    hspeed += 0.025;
    
    //Cap horizontal speed
    if (hspeed > 3)
        hspeed = 3;
}

//Otherwise, if moving left...
else {

    //Increment speed
    hspeed -= 0.025;
    
    //Cap horizontal speed
    if (hspeed < -2)
        hspeed = -2;
}

//Slow down vertical speed
if (vspeed > 0)
    vspeed -= 0.0125;
    
//Otherwise, destroy if outside the view
else if (vspeed == 0) {

    if (x < __view_get( e__VW.XView, view_current )-16)
    || (x > __view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )+16)
        instance_destroy();
}

