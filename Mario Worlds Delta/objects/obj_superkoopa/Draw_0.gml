/// @description Draw Koopa

//If the beach koopa has a feather
if (feather == 1) {

    pal_swap_set(spr_palette_beachkoopa_cape, isflashing);
}

//Draw beach koopa
draw_sprite_ext(sprite_index, image_index, round(x), round(y)+1, xscale, 1, 0, c_white, 1);

//End palette swap
pal_swap_reset();

