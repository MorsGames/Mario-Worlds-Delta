/// @description Custom wall collision

//Inherit event
event_inherited();

//If moving right
if (hspeed > 0)
    ready = 1;
else if (hspeed < 0)
    ready = 3;

