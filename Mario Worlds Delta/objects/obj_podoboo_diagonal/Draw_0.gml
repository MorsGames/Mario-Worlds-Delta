/// @description Draw diagonal podoboo

if (vspeed > 0)
    draw_sprite_ext(sprite_index, image_index, round(x), round(y), xscale, 1, 0, c_white, 1);
else if (vspeed < 0)
    draw_sprite_ext(sprite_index, image_index, round(x), round(y)+16, xscale, -1, 0, c_white, 1);

