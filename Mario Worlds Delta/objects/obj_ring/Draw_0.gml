/// @description Draw ring

//Set blend mode
draw_set_blend_mode(bm_add);

//Draw ring
draw_sprite_ext(sprite_index, image_index, round(x), round(y), scale, scale, 0, make_colour_rgb(18, 254, 5), alpha);

//Reset blend mode
draw_set_blend_mode(bm_normal);

