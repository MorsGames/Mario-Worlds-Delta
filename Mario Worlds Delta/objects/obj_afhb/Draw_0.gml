/// @description Draw the platform

//Blocks
draw_sprite_ext(sprite_index, 2, round(x), round(y)+loffset, 1, 1, 0, c_white, 1);
draw_sprite_ext(sprite_index, 3, round(x), round(y)+roffset, 1, 1, 0, c_white, 1);

//Wings
draw_sprite_ext(sprite_index, image_index, round(x), round(y), 1, 1, 0, c_white, 1);

