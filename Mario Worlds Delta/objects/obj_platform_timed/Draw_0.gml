/// @description Draw the platform

//Draw platform
draw_sprite_ext(sprite_index, image_index, round(x), round(y), 1, 1, 0, c_white, 1);

//Draw timer
if (time > 0)
    draw_sprite_ext(spr_platform_timed_number, time, round(x)+12, round(y)+4, 1, 1, 0, c_white, 1);

