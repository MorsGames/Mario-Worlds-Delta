/// @description Horizontal Accordion Platform

//Do not animate
image_speed = 0;
image_index = 0;

//Expand
alarm[0] = 90;

//Create blocks
llb = instance_create(x, y, obj_accordion_block);
lrb = instance_create(x, y, obj_accordion_block);
rlb = instance_create(x, y, obj_accordion_block);
rrb = instance_create(x, y, obj_accordion_block);
with (rrb)
    image_index = 1;

