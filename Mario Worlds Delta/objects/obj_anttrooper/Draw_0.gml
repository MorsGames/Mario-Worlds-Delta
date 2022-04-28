/// @description Draw Ant Trooper

if (turn == 0)
    draw_sprite_ext(spr_anttrooper, image_index, round(x), round(y)+8, xscale, 1, direction, c_white, 1);
else
    draw_sprite_ext(spr_anttrooper_turn, turn-1, round(x), round(y)+8, xscale, 1, direction, c_white, 1);

