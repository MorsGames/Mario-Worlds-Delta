/// @description Draw boo

if (taunt == 1)
    draw_sprite_ext(spr_bigboo, 2, round(x), y, xscale, 1, 0, c_white, 1);
else {

    //If not turning
    if (sprite_index != spr_bigboo_turn)
        draw_sprite_ext(spr_bigboo, movenow, round(x), y, xscale, 1, 0, c_white, 1);
    else
        draw_sprite_ext(spr_bigboo_turn, image_index, round(x), y, xscale, 1, 0, c_white, 1);
}

