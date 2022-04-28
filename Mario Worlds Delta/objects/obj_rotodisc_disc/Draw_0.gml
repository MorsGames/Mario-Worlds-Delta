/// @description Draw rotodisc

//Set the palette
pal_swap_set(spr_palette_rotodisc, palette);

//Draw it
draw_sprite_ext(sprite_index, image_index, round(x), round(y), 1, 1, 0, c_white, 1);

//Reset the palette
pal_swap_reset();

