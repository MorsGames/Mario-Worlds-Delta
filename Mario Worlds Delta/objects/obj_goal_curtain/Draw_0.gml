/// @description Draw the surface.

//Set the blending mode
gpu_set_blendmode(bm_subtract);

//Draw the transition image.
draw_surface(surf, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));

//Set the blending end mode
gpu_set_blendmode(bm_normal);

