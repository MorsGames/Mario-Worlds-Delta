/// @description Stretch Boo logic

//Set the facing direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

//Turn towards ledges
if (hspeed > 0) && (!collision_line(x+11, y-4, x+11, y-20, obj_solid, 0, 0))
|| (hspeed < 0) && (!collision_line(x-12, y-4, x-12, y-20, obj_solid, 0, 0))
    hspeed = -hspeed;

