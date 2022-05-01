/// @description Draw sprite

//Set blend mode
gpu_set_blendmode(bm_add);

//Draw the sprite
draw_sprite_ext(sprite_index, image_index, __view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ), 1.5, 1, 0, c_white, 1);

//Set blend mode to normal
gpu_set_blendmode(bm_normal);

