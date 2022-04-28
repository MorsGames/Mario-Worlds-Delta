/// @description Stretch Boo logic

//Set the facing direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

//Turn towards ledges
if (hspeed > 0) && (!collision_line(x+11, bbox_bottom-1, x+11, bbox_bottom+15, obj_semisolid, 0, 0))
|| (hspeed < 0) && (!collision_line(x-12, bbox_bottom-1, x-12, bbox_bottom+15, obj_semisolid, 0, 0))
    hspeed = -hspeed;

