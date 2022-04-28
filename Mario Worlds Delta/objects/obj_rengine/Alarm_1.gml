/// @description Stop engine

//Set the sprite
sprite_index = spr_rengine_st;

//Do not animate.
image_speed = 0;
image_index = 3;

//Set up frames.
alarm[2] = 2;

//Set up light frame
if (light != -1)
    with (light) image_index = 0;

