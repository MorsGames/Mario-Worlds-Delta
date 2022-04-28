/// @description Bump with block

if (other.vspeed < 0)
&& (vspeed >= 0)
&& (bbox_bottom < other.yprevious+5)
&& (!position_meeting(x, y-8, obj_solid))
    vspeed = -3;

