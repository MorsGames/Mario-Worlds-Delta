/// @description Draw bubble

//Draw enemy
draw_sprite_ext(sprout, image_index, round(x)+8+(sprite_get_xoffset(sprout)), y+26, 1*sign(hspeed), -1, 0, c_white, 1);

//Draw bubble
draw_sprite_ext(sprite_index, image_index, round(x), y, 1, 1, 0, c_white, image_alpha);

