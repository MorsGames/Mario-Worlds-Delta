/// @description Blurp logic

//Update facing direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0) 
    xscale = -1;

//Wave
if (y > ystart)
    vspeed -= 0.0125;
else if (y < ystart)
    vspeed += 0.0125;

