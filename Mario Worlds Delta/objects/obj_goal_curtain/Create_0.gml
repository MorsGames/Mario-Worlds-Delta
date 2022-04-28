/// @description The level is about to end.

//Set the destination room.
target = noone;

//Take a screenshot.
back = background_create_from_surface(application_surface, 0, 0, global.gw*2, global.gh*2, 0, 0);

//The image is going to zoom out, so its initial size should be VERY big and shrink until it gets very small.
scale = 250;

//Set the surface
surf = surface_create(__view_get( e__VW.WView, 0 ), __view_get( e__VW.HView, 0 ));

//Set the surface colour
surf_colour = c_black;

