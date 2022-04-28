/// @description Display the message box

//Draw the screenshot if it exists
if (background_exists(back)) {

    //Disable alpha blending
    draw_enable_alphablend(0);
    
    //Draw screenshot
    draw_background(back, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));
    
    //Enable alpha blending
    draw_enable_alphablend(1);
}

//Draw the message box
draw_sprite_ext(spr_message, obj_controller.hud_type, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2, __view_get( e__VW.YView, 0 ) + 78, scale, scale, 0, c_white, 1);

//Set up the font
if (obj_controller.hud_type == 2)
    draw_set_font(global.fontmsg_alt);
else
    draw_set_font(global.fontmsg);

//Set up the colour
draw_set_colour(c_white);

//If the text should be displayed
if (scale == 1) {

    //Draw the text
    draw_text_colour_shadowed(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2 - 72, __view_get( e__VW.YView, 0 ) + 46, string(message), c_black, c_white, 1, 1, 1, 1);
    
    //If this is a switch palace message, draw blocks
    switch (inisection) {
    
        //Yellow Switch Palace
        case ("MSG_SWY"): {
        
            draw_sprite(spr_area_y, 1, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2 - 41, __view_get( e__VW.YView, 0 ) + 78);
            draw_sprite(spr_area_y, 0, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2 + 24, __view_get( e__VW.YView, 0 ) + 78);
        } break;
        
        //Yellow Switch Palace
        case ("MSG_SWG"): {
        
            draw_sprite(spr_area_g, 1, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2 - 41, __view_get( e__VW.YView, 0 ) + 78);
            draw_sprite(spr_area_g, 0, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2 + 24, __view_get( e__VW.YView, 0 ) + 78);
        } break;
        
        //Yellow Switch Palace
        case ("MSG_SWR"): {
        
            draw_sprite(spr_area_r, 1, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2 - 41, __view_get( e__VW.YView, 0 ) + 78);
            draw_sprite(spr_area_r, 0, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2 + 24, __view_get( e__VW.YView, 0 ) + 78);
        } break;
        
        //Yellow Switch Palace
        case ("MSG_SWB"): {
        
            draw_sprite(spr_area_b, 1, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2 - 41, __view_get( e__VW.YView, 0 ) + 78);
            draw_sprite(spr_area_b, 0, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2 + 24, __view_get( e__VW.YView, 0 ) + 78);
        } break;
    }    
}

