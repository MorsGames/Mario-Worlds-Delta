/// @description Draw spiketop

if (turn == 0)
    draw_sprite_ext(spr_spiketop_blue, image_index, round(x), round(y)+8, xscale, 1, direction, c_white, 1);
else
    draw_sprite_ext(spr_spiketop_blue_turn, turn-1, round(x), round(y)+8, xscale, 1, direction, c_white, 1);

