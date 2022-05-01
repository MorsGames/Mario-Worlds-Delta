/// @description Draw ring

//Set blend mode
gpu_set_blendmode(bm_add);

//Draw ring
draw_sprite_ext(sprite_index, image_index, round(x), round(y), scale, scale, 0, make_colour_rgb(18, 254, 5), alpha);

//Reset blend mode
gpu_set_blendmode(bm_normal);

