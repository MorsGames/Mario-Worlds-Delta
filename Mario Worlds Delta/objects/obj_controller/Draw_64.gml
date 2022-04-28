/// @description Deals with the application surface, window size, and fading.

//Disable alpha blending
draw_enable_alphablend(0);

//Set the shockwave shader
if (shock_enabled) {

    shader_set(shd_shockwave);
    var_time_var += 0.03;
}

//Set the shader uniforms
shader_set_uniform_f(uni_time, var_time_var);
shader_set_uniform_f(uni_mouse_pos, var_mouse_pos_x, var_mouse_pos_y);
shader_set_uniform_f(uni_resolution, var_resolution_x, var_resolution_y);
shader_set_uniform_f(uni_shock_amplitude, var_shock_amplitude);
shader_set_uniform_f(uni_shock_refraction, var_shock_refraction );
shader_set_uniform_f(uni_shock_width, var_shock_width);

//If the screen is fading
if (fade < 1) 
&& (size > 0.75) 
&& (pixelate <= 0) {
    
    shader_set(shd_pixel);
    shader_set_uniform_f(pixel, global.gw, global.gh, size, size);
}

//Draw the application surface
draw_surface_stretched(application_surface, 0, yport, global.gw, global.gh);

//Draw the pre-freeze surface if it exists
if (surface_exists(global.prefreeze))
    draw_surface_stretched(global.prefreeze, 0, yport, global.gw, global.gh);

//Reset the shader
shader_reset();

//Enable alpha blending
draw_enable_alphablend(1);

//Set GUI scale
display_set_gui_maximise(filter+1, filter+1);
display_set_gui_size(global.gw, global.gh);

//Draw the level or map HUD
if (instance_exists(obj_hud)) {

    with (obj_hud) {
    
        if (object_index == obj_hud)
            event_user(obj_controller.hud_type);
        else
            event_user(0);
    }
}

//Reset the font
draw_set_font(global.font);

//Fades the screen to and from black
if (fade < 1) {

    //Increment fading
    fade += 1/30;

    //Fade from black
    if (mode = 0) {
    
        draw_set_alpha(1-fade);
        size -= 0.75;
    }

    //Fade to black
    else {
    
        draw_set_alpha(fade);
        size += 0.75;
    }

    //Draw the fade
    draw_set_colour(c_black)
    draw_rectangle(0, 0, 5000, 5000, 0)
    draw_set_alpha(1)
    draw_set_colour(c_white)
}

//Display FPS
if (showfps) {

    if (fps < 30)
       draw_set_colour(c_red);
    else if (fps < 60)
       draw_set_colour(c_yellow);   
    else
        draw_set_colour(c_lime);
             
     draw_text(2, 2, string_hash_to_newline(string(fps) + " FPS"));
     
     draw_set_colour(c_white);
}

//Set the font
draw_set_font(global.font);

//Align the font
draw_set_halign(fa_right);

//Display settings message
if (message != "") {

    draw_text(display_get_gui_width() - 2, display_get_gui_height() - 10, string_hash_to_newline(string(message)));
}

//Re-align the font
draw_set_halign(fa_left);

