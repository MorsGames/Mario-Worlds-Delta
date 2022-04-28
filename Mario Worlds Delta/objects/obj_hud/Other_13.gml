/// @description Minimalistic HUD

//X position
var _xx = 0;
var _ww = display_get_gui_width();

//Y Position
var _yy = 0;
var _hh = display_get_gui_height();
var _yp = 0;

//Set the colour
draw_set_colour(c_black);

//Draw rectangles
draw_rectangle(_xx, _yy, _xx + _ww, _yy+8, false);
draw_rectangle(_xx, _yy + _hh-8, _xx + _ww, _yy + _hh, false);

//Reset colour
draw_set_colour(c_white);

//Set font
draw_set_font(global.fontnumb);

//Lives
draw_sprite_ext(spr_hud_minimalist_mario, global.player, _xx+8, _yy-_yp, 1, 1, 0, c_white, 1);
draw_text(_xx+24, _yy-_yp, string_hash_to_newline(string_format(lives, 2, 0)));

//Bonus
draw_sprite_ext(spr_hud_stars, image_index, _xx+48, _yy-_yp, 1, 1, 0, c_white, 1);
draw_text(_xx+64, _yy-_yp, string_hash_to_newline(string_format(global.bonus, 2, 0)));

//Ace Coin Outline
draw_sprite_ext(spr_hud_sma2_acecoins, 2, _xx+88, _yy-_yp, 1, 1, 0, c_white, 1);

//Ace Coins
var a = 0;
if (ds_map_size(displaydragoncoins) < 5) {
    
    repeat (ds_map_size(displaydragoncoins)) {
        
        draw_sprite_ext(spr_hud_sma2_acecoins, 0, _xx+88+a, _yy-_yp, 1, 1, 0, c_white, 1);    
            a += 8;
    }
}
else
draw_sprite_ext(spr_hud_sma2_acecoins, 1, _xx+88, _yy-_yp, 1, 1, 0, c_white, 1);

//Reserve Box
draw_sprite_ext(spr_hud_minimalist_reserve, image_index, _xx + _ww/2 + 9, _yy-_yp, 1, 1, 0, c_white, 1);
draw_sprite_ext(spr_hud_minimalist_reserve_item, global.reserveitem, _xx + _ww/2 + 17, _yy-_yp, 1, 1, 0, c_white, 1);

//Timer
draw_sprite_ext(spr_hud_minimalist_time, image_index, _xx+_ww-88+shakex, _yy+shakey-_yp, 1, 1, 0, c_white, 1);

//Set font
draw_set_font(global.fontnumbgold);

//Show regular time if the stage is not clear
if (clear == 0) {
    
    if (global.time > -1) {
    
        //If the level has not been cleared and the timer is lower than 100
        if (global.clear == 0)
        && (global.time <= 100) {
        
            draw_text_colour(_xx+_ww-72+shakex, _yy+shakey-_yp, string_hash_to_newline(string_format(displaytime, 3, false)), c_white, c_white, c_white, c_white, 1);
            draw_text_colour(_xx+_ww-72+shakex, _yy+shakey-_yp, string_hash_to_newline(string_format(displaytime, 3, false)), c_red, c_red, c_red, c_red, fade);
        }
        else
            draw_text_colour(_xx+_ww-72, _yy-_yp, string_hash_to_newline(string_format(displaytime, 3, 0)), c_white, c_white, c_white, c_white, 1);
    }
    else
        draw_text_colour(_xx+_ww-72, _yy-_yp, string_hash_to_newline("  0"), c_white, c_white, c_white, c_white, 1);
}
else {

    draw_text_colour(_xx+_ww-72, _yy-_yp, string_hash_to_newline(string_format(obj_hud.time, 3, false)), c_white, c_white, c_white, c_white, 1);
}

//Set font
draw_set_font(global.fontnumb);

//Coins
draw_sprite_ext(spr_hud_coins, image_index, _xx+_ww-40, _yy-_yp, 1, 1, 0, c_white, 1);
draw_text(_xx+_ww-24, _yy-_yp, string_hash_to_newline(string_format(global.coins, 2, false)));

//Score
draw_text(_xx+_ww-64, _yy+_hh-8+_yp, string_hash_to_newline(string_format(score, 7, false)));

