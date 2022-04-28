/// @description Draw throwable block

//If this is a regular throw block
if (sprite_index == spr_brick_throw_th)
    draw_sprite_ext(sprite_index, image_index, round(x), round(y)+1, dir, 1, 0, c_white, 1);
    
//Otherwise, draw the indicated sprite
else {

    if (sprite_index == spr_pokey_snowball)
        draw_sprite_ext(spr_pokey_snowball_angle, image_index, round(x), round(y)+8, dir, 1, angle, c_white, 1);
}

