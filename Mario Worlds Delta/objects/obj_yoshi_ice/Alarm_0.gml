/// @description Set scale and horizontal speed

//If not moving up/down
if (vspeed == 0) {

    if (hspeed > 0)
        hspeed = 3;
    else if (hspeed < 0)
        hspeed = -3;
}
else {

    if (hspeed > 0)
        hspeed = 2.5;
    else if (hspeed < 0)
        hspeed = -2.5;
}

//Scale
image_xscale = 1;

