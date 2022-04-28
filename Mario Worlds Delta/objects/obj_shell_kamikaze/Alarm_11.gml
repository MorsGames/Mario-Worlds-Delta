/// @description Change colour

//Repeat the process
alarm[11] = 4;

//Replace colour
isflashing++;
if (isflashing > (pal_swap_get_pal_count(spr_palette_brick_blue)-1))
    isflashing = 0;

