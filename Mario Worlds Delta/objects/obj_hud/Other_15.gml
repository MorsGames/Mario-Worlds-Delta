/// @description Hello Engine HUD

//X position
var _xx = 0;
var _ww = display_get_gui_width();

//Y Position
var _yy = 0;
var _hh = display_get_gui_height();
var _yp = 0;

//Draw the bar
draw_sprite_ext(spr_hud_hello_bar, 0, _xx + _ww/2, _yy+7, 1, 1, 0, c_white, 0.7);

//Set colour
draw_set_colour(c_white);

//Set alpha
draw_set_alpha(0.7);

//Set normal font
draw_set_font(global.fontnumb);

//Lives
draw_sprite_ext(spr_hud_sma4_mario, global.player, _xx+_ww/2-116, _yy+16-_yp, 1, 1, 0, c_white, 0.7);
draw_text(_xx+_ww/2-92, _yy+16-_yp, string_hash_to_newline(string_format(lives, 2, 0)));

//Set font
draw_set_font(global.fontnumbgold);

//Timer
draw_sprite_ext(spr_hud_sma4_time, image_index, _xx+_ww/2-56+shakex, _yy+16+shakey-_yp, 1, 1, 0, c_white, 0.7);

//Show regular time if the stage is not clear
if (clear == 0) {
    
    if (global.time > -1) {
    
        //If the level has not been cleared and the timer is lower than 100
        if (global.clear == 0)
        && (global.time <= 100) {
        
            draw_text_colour(_xx+_ww/2-48+shakex, _yy+16+shakey-_yp, string_hash_to_newline(string_add_zeros(displaytime, 3)), c_white, c_white, c_white, c_white, 0.7);
            draw_text_colour(_xx+_ww/2-48+shakex, _yy+16+shakey-_yp, string_hash_to_newline(string_add_zeros(displaytime, 3)), c_red, c_red, c_red, c_red, 0.7*fade);
        }
        else
            draw_text_colour(_xx+_ww/2-48, _yy+16-_yp, string_hash_to_newline(string_add_zeros(displaytime, 3)), c_white, c_white, c_white, c_white, 0.7);
    }
    else
        draw_text_colour(_xx+_ww/2-48, _yy+16-_yp, string_hash_to_newline("000"), c_white, c_white, c_white, c_white, 0.7);
}
else {

    draw_text_colour(_xx+_ww/2-48, _yy+16-_yp, string_hash_to_newline(string_add_zeros(obj_hud.time, 3)), c_white, c_white, c_white, c_white, 0.7);
}

//P-Meter
if (instance_exists(obj_playerparent)) {

    if (obj_playerparent.pmeter > 111)
        draw_sprite_ext(spr_hud_sma4_pmeter, 6+flash, _xx+16, _yy + _hh-16, 1, 1, 0, c_white, 0.7);
    else
        draw_sprite_ext(spr_hud_sma4_pmeter, 0+(obj_playerparent.pmeter/18), _xx+16, _yy + _hh-16, 1, 1, 0, c_white, 0.7);
}
else {

    draw_sprite_ext(spr_hud_sma4_pmeter, 0, _xx+16, _yy + _hh-16, 1, 1, 0, c_white, 0.7);
}

//Reserve Box
if (global.reserveitem > cs_pow_small) {

    draw_sprite_ext(spr_hud_reserve_item, global.reserveitem, _xx + _ww/2, _yy + 12 -_yp, 1, 1, 0, c_white, 0.7);
}

//Set font
draw_set_font(global.fontnumb);

//Coins
draw_sprite_ext(spr_hud_sma4_coins, image_index, _xx+_ww/2+25, _yy+16-_yp, 1, 1, 0, c_white, 0.7);
draw_text(_xx+_ww/2+33, _yy+16-_yp, string_hash_to_newline(string_add_zeros(global.coins, 2)));

//Score
draw_text(_xx+_ww/2+61, _yy+16+_yp, string_hash_to_newline(string_add_zeros(score, 7)));

//Set font
draw_set_font(global.fontnumblarge);

//If the HUD can display the bonus stars
if (display > 0) 
|| (global.clear == 1) {

    //Bonus
    draw_sprite_ext(spr_hud_stars, image_index, _xx+_ww-56, _yy+_hh-16-_yp, 1, 1, 0, c_white, 0.7);
    draw_text(_xx+_ww-32, _yy+_hh-24-_yp, string_hash_to_newline(string_format(global.bonus, 2, 0)));
}

//Reset alpha
draw_set_alpha(1);

