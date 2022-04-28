/// @description Draw the 'Course Clear' HUD

if (clear > 0) {

    //Draw HUD
    switch (obj_controller.hud_type) {
    
        //Minimalist / No Score
        case (4): draw_sprite_ext(spr_hud_clear_noscore, global.player, __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-64, __view_get( e__VW.YView, 0 )+64, 1, 1, 0, c_white, 1); break;
        
        //Default
        default: draw_sprite_ext(spr_hud_clear, global.player, __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-64, __view_get( e__VW.YView, 0 )+64, 1, 1, 0, c_white, 1); break;
    }
    
    //Set font
    draw_set_font(global.fontnumb);

    //Set colour
    draw_set_colour(c_white);
    
    //Do not draw in Minimalist / No Score
    if (obj_controller.hud_type != 4) {
        
        //Time left
        draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-56, __view_get( e__VW.YView, 0 )+96, string_hash_to_newline(string_format(time, 3, 0)));
        
        //Multiplier
        draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-24, __view_get( e__VW.YView, 0 )+96, string_hash_to_newline(string_format(multiplier, 3, 0)));
        
        //Time left x 50
        draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+8, __view_get( e__VW.YView, 0 )+96, string_hash_to_newline(string_format(global.time*multiplier, 7, 0)));
    }
    
    //Draw bonus stars
    if (clear == 2) {
    
        //Draw 'Bonus!' text
        draw_sprite_ext(spr_hud_clear, 4, __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-64, __view_get( e__VW.YView, 0 )+64, 1, 1, 0, c_white, 1);
        
        //Set font
        draw_set_font(global.fontnumblarge);
        
        //Draw bonus stars obtained
        draw_text(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+32, __view_get( e__VW.YView, 0 )+112, string_hash_to_newline(string_format(global.bonusadd, 2, 0)));
    }
}

