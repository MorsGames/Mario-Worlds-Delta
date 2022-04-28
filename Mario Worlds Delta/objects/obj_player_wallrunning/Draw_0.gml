/// @description Draw the player

//Set the palette
player_set_palette(obj_playerparent);

//Draw the cape if the player has the cape powerup
if (global.powerup == cs_pow_cape) {

    draw_sprite_ext(spr_cape_walk, image_index, round(x), round(y)+1, 1, xscale, angle, c_white, 1);
}

//Draw player
draw_sprite_ext(sprite_index, image_index, round(x), round(y), 1, xscale, angle, c_white, obj_playerparent.image_alpha);

//Reset shader
pal_swap_reset();

