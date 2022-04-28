/// @description Red Switch Block

//Do not animate
image_speed = 0;

//If the red switch has been pressed, become solid
if (global.palaceswitch_r = true)
    instance_create(x, y, obj_solid);
else
    image_index = 1;

