/// @description Leave a trail

//Repeat
alarm[0] = 2;

//Leave a trail.
with (instance_create(x, y, obj_rotodisc_trail))
    palette = other.palette;

