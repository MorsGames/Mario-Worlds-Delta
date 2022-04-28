/// @description Draw the surface.

//Set the blending mode
draw_set_blend_mode(bm_subtract);

//Draw the transition image.
draw_surface(surf, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));

//Set the blending end mode
draw_set_blend_mode(bm_normal);

