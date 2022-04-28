/// @description Ice muncher block

//Do not animate
image_speed = 0;
image_index = 0;

//Animate
alarm[0] = 60+round(random(120));

//Create slippery surface
myslip = instance_create(x, y-16, obj_slippery);

