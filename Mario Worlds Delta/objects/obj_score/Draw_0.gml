/// @description Draw it

if (y <= __view_get( e__VW.YView, 0 )+40)
    draw_sprite_ext(sprite_index, image_index, round(x), __view_get( e__VW.YView, 0 )+40, 1, 1, 0, c_white, image_alpha);
else
    draw_sprite_ext(sprite_index, image_index, round(x), y, 1, 1, 0, c_white, image_alpha);

