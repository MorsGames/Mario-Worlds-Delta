/// @description Draw the background and text

//Set the font
draw_set_font(global.font);

//Set the colour
draw_set_colour(c_white);

//Draw the background
if (background_exists(back)) {
    
    //Disable alpha blending.
    draw_enable_alphablend(0);
    
    //Draw the screenshot
    draw_background(back, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));
    
    //Enable alpha blending.
    draw_enable_alphablend(1);
}

//Align the text
draw_set_valign(fa_center);
draw_set_halign(fa_center);

//Set alpha
draw_set_alpha(0.5);

//Draw rectangle
draw_rectangle_colour(__view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current ) + __view_get( e__VW.HView, view_current ) / 2 - 8, __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ), __view_get( e__VW.YView, view_current ) + __view_get( e__VW.HView, view_current ) / 2 + 8, c_black, c_black, c_black, c_black, false);

//Set alpha
draw_set_alpha(1);

//Draw 'Game Paused' text
draw_text_colour_shadowed(__view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ) / 2, __view_get( e__VW.YView, view_current ) + __view_get( e__VW.HView, view_current ) / 2, string(pause_text), c_black, c_white, 1, 1, 0.5, 1);

//Reset text alignment
draw_set_valign(fa_top);
draw_set_halign(fa_left);

