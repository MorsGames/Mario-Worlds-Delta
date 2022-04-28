/// @description Draw wiggler head

//If transforming, apply palette
if (state == 1) 
    pal_swap_set(spr_palette_wiggler, color);

//Draw wiggler
draw_sprite_ext(sprite_index, image_index, round(x), y-1, xscale, 1, 0, c_white, 1);

//If transforming, end palette
if (state == 1)
    pal_swap_reset();

