/// @description Draw base and fireball

//Update frame
frame += 0.2;

//Draw it
draw_sprite(sprite_index, image_index, round(x), round(y));
draw_sprite_ext(spr_fireball, frame, round(x)+8, round(y)+8, 1, 1, 0, c_white, 1);

