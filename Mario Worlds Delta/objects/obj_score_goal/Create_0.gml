/// @description Shows how many stars the player obtained on the goal

//Frame to show
frame = 0;

//Colour
colour = c_white;

//Show for 2 seconds
alarm[0] = 120;

//Replace the colour
alarm[1] = 4;

//Fonts
font0 = font_add_sprite_ext(spr_hud_clear_stars0, "0123456789", 0, 8);
font1 = font_add_sprite_ext(spr_hud_clear_stars1, "0123456789", 0, 8);
font2 = font_add_sprite_ext(spr_hud_clear_stars2, "0123456789", 0, 8);
font3 = font_add_sprite_ext(spr_hud_clear_stars3, "0123456789", 0, 8);

