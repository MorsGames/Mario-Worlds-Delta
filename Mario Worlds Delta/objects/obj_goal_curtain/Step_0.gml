/// @description Transition logic

//Handle the scale of the effect.
event_user(0);

//Check if the surface still exists
if (!surface_exists(surf)) {

    surf = surface_create(room_width,room_height);
}

//Otherwise, draw the iris-out effect.
else {

    //Set the target surface.
    surface_set_target(surf);
    
    //Clear white parts
    draw_clear(c_white-surf_colour);
    
    //Set the blending mode
    draw_set_blend_mode(bm_subtract);
    
    //Draw the transition image.
    draw_set_circle_precision(64);
    draw_circle_colour(x-__view_get( e__VW.XView, 0 ), y-__view_get( e__VW.YView, 0 ), scale, c_white, c_white, false);
    
    //Set the blending end mode
    draw_set_blend_mode(bm_normal);
    
    //Reset the surface target
    surface_reset_target();
}

