/// @description Draw Para Goomba

//Wings
draw_sprite_ext(spr_goomba_wings, wing_anim, round(x), round(y)+1, 1, 1, 0, c_white, 1);

//Goomba
draw_sprite_ext(sprite_index, image_index, round(x), round(y), xscale, 1, 0, c_white, 1);

