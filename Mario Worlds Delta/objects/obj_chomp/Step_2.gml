/// @description Set turning position.

if ((idle) || (retreat)) {

    if ((x < originx) && (xprevious > originx))
        stop_l = originx-4-ceil(random(16));
    else if ((x > originx) && (xprevious < originx))
        stop_r = originx+4+ceil(random(16));
}

//Animate
image_speed = 0.1+(0.2*lunge);

//Set the facing direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

