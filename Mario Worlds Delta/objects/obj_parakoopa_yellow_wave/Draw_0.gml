/// @description Draw Yellow Koopa

//Update wing animation
anim += 0.15;

//Draw Koopa
draw_sprite_ext(sprite_index, image_index, round(x), round(y)+1, xscale, 1, 0, c_white, 1);

//Draw Koopa's wing
draw_sprite_ext(spr_koopa_wing, anim, round(x), round(y)+1, xscale, 1, 0, c_white, 1);

