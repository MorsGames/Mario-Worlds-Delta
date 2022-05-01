/// @description Draw a transparent ring

//Set blend mode
gpu_set_blendmode(bm_add);

//Draw the ring
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, image_xscale, 0, merge_colour(c_white,make_color_hsv(hue,255,255), 0.5), image_alpha);

//Reset blend mode
gpu_set_blendmode(bm_normal);

