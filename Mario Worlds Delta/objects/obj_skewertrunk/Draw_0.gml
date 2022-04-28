/// @description Draw the trunk

draw_sprite_ext(sprite_index, 0, round(x), round(y), 1, 1, 0, c_white, 1);
draw_sprite_tiled_area_ext(sprite_index, 1, round(x), round(y), x, y+16, x+64, parent.y, c_white, 1);

