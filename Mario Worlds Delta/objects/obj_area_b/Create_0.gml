/// @description Blue Switch Block

//Do not animate
image_speed = 0;

//If the blue switch has been pressed, become solid
if (global.palaceswitch_b = true)
    instance_create(x, y, obj_solid);
else
    image_index = 1;

