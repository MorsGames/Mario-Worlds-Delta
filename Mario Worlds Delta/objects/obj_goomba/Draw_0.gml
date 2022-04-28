/// @description Draw Goomba

if (owo == 1)
&& (mebelow != noone)
&& (sprite_index != stompsprite)
    draw_sprite_ext(spr_goomba_stack_owo, 1, round(x)+offset, round(y)+1, xscale, 1, 0, c_white, 1);
else
    draw_sprite_ext(sprite_index, image_index, round(x)+offset, round(y)+1, xscale, 1, 0, c_white, 1);    

