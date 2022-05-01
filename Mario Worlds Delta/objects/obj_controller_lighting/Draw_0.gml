/// @description Draw the surface

//Set blend mode
gpu_set_blendmode(bm_subtract);

//Draw surface
draw_surface(global.surf_light, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));

//Set blend mode to normal
gpu_set_blendmode(bm_normal);

