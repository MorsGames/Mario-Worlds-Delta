/// @description Draw Galoomba

//Back Wing
draw_sprite_ext(spr_galoomba_wing_back, wing_anim, round(x), round(y)+1+round(image_index), xscale, 1, 0, c_white, 1);

//Galoomba
draw_sprite_ext(sprite_index, image_index, round(x), round(y)+1, xscale, 1, 0, c_white, 1);

//Front wing
draw_sprite_ext(spr_galoomba_wing_front, wing_anim, round(x), round(y)+1+round(image_index), xscale, 1, 0, c_white, 1);

