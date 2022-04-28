/// @description Draws the HUD

var _xx = 0;
var _yy = 0;

//Draw the border
draw_sprite_ext(spr_hud_map, 0, _xx, _yy, 1, 1, 0, c_white, 1);

//Set up palette
player_set_palette(id);

//If the player has a cape, draw it first...
if (global.powerup == cs_pow_cape) {

    draw_sprite_ext(spr_cape_walk, anim, _xx+38, _yy+23, -1, 1, 0, c_white, 1); 
}

//...then draw the player
draw_sprite_ext(player_walk(), anim, _xx+38, _yy+23, -1, 1, 0, c_white, 1);

//Reset shader
pal_swap_reset();

//Set up the font
draw_set_font(global.font);

//Draw lives
draw_text(_xx+56, _yy+31, string_hash_to_newline(string("*") + string(lives)));

//Set up the map font
draw_set_font(global.fontmsg);

//Set up the colour
draw_set_colour(c_black);

//Draw the level name 
if (levelname != "") {

    draw_text(_xx+89, _yy+32, string_hash_to_newline(string_upper(levelname)));
}

//Reset the text colour
draw_set_colour(c_white);

//Set up the map font
draw_set_font(global.font);

if (show_saved) {

    draw_set_alpha(fade_save);

    draw_text(_xx+18,_yy+__view_get( e__VW.HView, 0 )-26,string_hash_to_newline("GAME SAVED!"));
    
    draw_set_alpha(1);

}

