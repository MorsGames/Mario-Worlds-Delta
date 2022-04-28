/// @description SHS Lighting surface and drawing methods.

//Prepare the surface
if (!surface_exists(global.surf_light)) {

    global.surf_light = surface_create(room_width, room_height);
}

//Set the surface target
surface_set_target(global.surf_light);

//Clear the white colour from the lights
draw_clear(c_white-(65793*intensity));

//Set the blending mode
draw_set_blend_mode(bm_subtract);

//Enable texture interpolation
texture_set_interpolation(true);

//Draw all the lights
for (var i=0; i<instance_count; i++;) {

    if ((instance_exists(instance_id_get( i )))
    && (object_is_ancestor(instance_id_get( i ).object_index, obj_lightparent))) {
        
        with (instance_id_get( i )) {
            
            //Draw a circle if the radius is greater than 0
            if (radius > 0) {
                
                //Draw a circle
                draw_set_circle_precision(64);
                draw_circle_colour(x-__view_get( e__VW.XView, view_current )+xoffset, y-__view_get( e__VW.YView, view_current )+yoffset, radius, image_blend, image_blend, false);
            }
            
            //Otherwise, perform the User Defined event from the object
            else
                event_user(15);
        }
    }
}

//Disable texture interpolation
texture_set_interpolation(false);

//Set the blending mode to normal
draw_set_blend_mode(bm_normal);

//Reset the surface target
surface_reset_target();

