/// @description Red Super Koopa Logic

//Cap the vertical speed in both directions
if (vspeed > 2) {

    vspeed = 2;

} else if (vspeed < -1) {

    vspeed = -1;

}

//Start flying upwards
if (flyingup) {

    vspeed -= 0.0375;

}

//Manage scale
if (hspeed >= 0)

    xscale = 1;
    
else

    xscale = -1;

//Animate the super koopa
image_speed = 0.25;

