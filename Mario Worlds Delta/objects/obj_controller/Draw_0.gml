/// @description Display status message

//Draws the screenshot shown when fading to black
if (background_exists(back)) {

    draw_enable_alphablend(0);
    draw_background_ext(back, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), 1, 1, 0, c_white, 1);
    draw_enable_alphablend(1);
}

