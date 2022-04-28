/// @description Draw menu

//Draw the screenshot if it exists
if (background_exists(back)) {

    //Disable alpha blending
    draw_enable_alphablend(0);
    
    //Draw screenshot
    draw_background(back,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ));
    
    //Enable alpha blending
    draw_enable_alphablend(1);
}

//Set the font
draw_set_font(global.font);

//Align the text
draw_set_valign(fa_center);
draw_set_halign(fa_center);

//Set color to black
draw_set_color(c_black);

//Draw rectangle
draw_set_alpha(0.5);
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 )+(global.gh/2)-12,__view_get( e__VW.XView, 0 )+global.gw,__view_get( e__VW.YView, 0 )+(global.gh/2)+12,false);
draw_set_alpha(1);

//Set color back to white
draw_set_color(c_white);

//Draw the text
draw_text(__view_get( e__VW.XView, 0 )+(global.gw/2), __view_get( e__VW.YView, 0 )+(global.gh/2), string_hash_to_newline(keyText));

//Re-Align the text
draw_set_valign(fa_top);
draw_set_halign(fa_left);

