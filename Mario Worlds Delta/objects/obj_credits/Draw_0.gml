/// @description Draw the credits

//Set the font
draw_set_font(global.font);

//Set the alpha
draw_set_alpha(alpha);

//Align the text to the center
draw_set_halign(fa_center);

//Draw the title
if (ready < 4) {
    
    draw_background_ext(bgr_title, __view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current )+48, 1, 1, 0, c_white, alpha);
    draw_text_colour_shadowed(__view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ) / 2, __view_get( e__VW.YView, view_current )+112, "- MARIO WORLDS ENGINE 3 -", c_black, c_white, 1, 1, alpha/2, alpha);
}

//Text
draw_text_colour_shadowed(__view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ) / 2, __view_get( e__VW.HView, view_current )-yy, string(text), c_black, c_white, 1, 1, 0.5, 1);

//Draw 'The end'
if ((ready >= 4) && (alpha > 0)) {

    draw_background_ext(bgr_theend, __view_get( e__VW.XView, view_current ), __view_get( e__VW.YView, view_current )+48, 1, 1, 0, c_white, alpha);
    if (display)
        draw_text_colour_shadowed(__view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ) / 2, __view_get( e__VW.YView, view_current )+176, "PRESS ANY KEY!", c_black, c_white, 1, 1, alpha/2, alpha);
}

