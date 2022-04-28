/// @description Draw the stars obtained

//Obtain the font
var fnt = font_add_sprite_ext(asset_get_index("spr_hud_clear_stars" + string(frame)), "0123456789", 0, 8);

//Set the font
draw_set_font(fnt);

//Align the text to the center
draw_set_halign(fa_center);

//If the frame is the first one
if (frame == 0)
    draw_text_colour(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2 + 4, __view_get( e__VW.YView, 0 ) + 64, string_hash_to_newline(string_format(global.bonusadd, 2, 0)), colour, colour, colour, colour, 1);
else
    draw_text_colour(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) / 2 + 4, __view_get( e__VW.YView, 0 ) + 64, string_hash_to_newline(string_format(global.bonusadd, 2, 0)), c_white, c_white, c_white, c_white, 1);
    
//Reset alignment
draw_set_halign(fa_left);

