/// @description Draw beam effect

//Set the blend mode
draw_set_blend_mode(bm_add);

//Draw the sprite
draw_sprite_ext(sprite_index, image_index, round(x), round(y), scale, scale, 0, c_white, alpha);

//Reset the blend mode
draw_set_blend_mode(bm_normal);

