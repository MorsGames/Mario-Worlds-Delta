/// @description Enemy parent logic

//Inherit event from parent
event_inherited();

//Turn at enemies script
event_user(2);

//Update facing direction
if (hspeed != 0)
    xscale = 1*sign(hspeed);

