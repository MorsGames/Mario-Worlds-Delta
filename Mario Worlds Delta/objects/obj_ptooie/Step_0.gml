/// @description PTooie logic

//Inherit event
event_inherited();

//Turn at ledges
event_user(6);

//Facing direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

