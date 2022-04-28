/// @description Draw the player

//Set the palette
player_set_palette(obj_playerparent);

//Draw the player
if (global.mount == 0) {

    draw_sprite_ext(sprite_index, img_index, round(x), round(y)+1, image_xscale, 1, 0, c_white, 1);

}

//Reset shader
pal_swap_reset();

