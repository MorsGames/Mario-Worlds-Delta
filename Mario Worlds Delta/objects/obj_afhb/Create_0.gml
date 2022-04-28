/// @description Amazing Flying Hammer Bro

//Do not animate
image_speed = 0;
image_index = 0;
alarm[0] = 7;

//Angle
angle = 0;

//Whether any of the blocks was hit
ready = 0;

//Timer
mytimer = 0;

//Block offsets
loffset = 0;
roffset = 0;

//Distance
distance = 64;

//Position
myx = xstart+distance;
myy = ystart;

//Rider
rider = instance_create(x, y, obj_afhb_rider);
    with (rider) parent = other.id;

