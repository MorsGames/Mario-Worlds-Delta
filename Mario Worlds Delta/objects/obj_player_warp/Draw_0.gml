/// @description Draw the player

//If the player is holding something and is not moving vertically
if (holding == 1) && (vspeed == 0) {

    if (global.powerup == cs_pow_small)
        draw_sprite_ext(myitem, myframe, round(x)+(10*image_xscale), round(y)-2, 1, 1, 0, c_white, 1);
    else
        draw_sprite_ext(myitem, myframe, round(x)+(10*image_xscale), round(y)-4, 1, 1, 0, c_white, 1);
}

//Set the palette
player_set_palette(id);

//Draw cape
if (vspeed != 0)
&& (canmove == 1)
&& (global.powerup == cs_pow_cape) {

    draw_sprite_ext(spr_cape_climb, 1, round(x), round(y), image_xscale, 1, 0, c_white, 1);
}

//Draw the player
draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale, 1, 0, c_white, 1);

//Draw cape
if (vspeed == 0)
&& (canmove == 1)
&& (global.powerup == cs_pow_cape) {

    draw_sprite_ext(spr_cape_walk, image_index, round(x), round(y), image_xscale, 1, 0, c_white, 1);
}

//Reset shader
pal_swap_reset();

//If the player is holding something and it is moving vertically
if (holding == 1) && (vspeed != 0) {

    if (global.powerup == cs_pow_small)
        draw_sprite_ext(myitem, myframe, round(x), round(y)-2, 1, 1, 0, c_white, 1);
    else
        draw_sprite_ext(myitem, myframe, round(x), round(y)-4, 1, 1, 0, c_white, 1);
}

