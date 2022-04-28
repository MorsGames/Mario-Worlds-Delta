//Draw the save box
draw_sprite_ext(sprite_index, obj_controller.hud_type, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.WView, 0 ) / 2, scale, scale, 0, c_white, 1);

draw_set_font(global.font);

//Set up the colour
draw_set_colour(c_white);

//If the text should be displayed
if (scale == 1) {

    if (display)
    
        draw_sprite_ext(spr_cursor_title, image_index, (__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2) - 96, __view_get( e__VW.YView, 0 )+(__view_get( e__VW.HView, 0 )/2)+(selection*16)+4, 1, 1, 0, c_white, 1);

    //Draw the text
    draw_text_colour_shadowed((__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2) - 80, __view_get( e__VW.YView, 0 )+(__view_get( e__VW.HView, 0 )/2)+4, "CONTINUE AND SAVE##CONTINUE WITHOUT SAVE", c_black, c_white, 1, 1, 1, 1);
    
}

