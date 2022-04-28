/// @description Draw boo

if (taunt == 1)
    draw_sprite_ext(spr_boobuddy_taunt, image_index, round(x), y, xscale, 1, 0, c_white, 1);
else
    draw_sprite_ext(sprite_index, movenow, round(x), y, xscale, 1, 0, c_white, 1);

