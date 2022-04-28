/// @description Draw front gate

draw_sprite_ext(sprite_index, image_index, round(x), round(y), 1, 1, 0, c_white, 1);
if (alpha > 0)
    draw_sprite_ext(sprite_index, image_index, round(x), round(y), 1, 1, 0, c_black, alpha);

