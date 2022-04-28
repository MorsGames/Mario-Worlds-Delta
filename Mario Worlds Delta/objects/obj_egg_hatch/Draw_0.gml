/// @description Draw Yoshi

//Set the shader
pal_swap_set(spr_palette_yoshi, colour);

//Draw Yoshi
draw_sprite_ext(sprite_index, image_index, round(x), y+1, 1, 1, 0, c_white, 1);

//Reset the shader
pal_swap_reset();

