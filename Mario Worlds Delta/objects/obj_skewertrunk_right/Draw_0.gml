/// @description Draw the trunk

draw_sprite_ext(sprite_index, 0, round(x), round(y), 1, 1, 0, c_white, 1);
draw_sprite_tiled_area_ext(sprite_index, 1, round(x), round(y), parent.x+16, y, x, y+64, c_white, 1);

