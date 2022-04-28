/// @description Hot head logic

//Inherit event
event_inherited();

//Set vertical facing direction
if (vspeed > 0)
    yscale = 1;
else if (vspeed < 0)
    yscale = -1;
    
//Set horizontal facing direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

