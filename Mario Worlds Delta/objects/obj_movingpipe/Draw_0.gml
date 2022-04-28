/// @description Draw pipe

//Draw top
draw_sprite(sprite_index, 0, round(x), round(y));

//Draw bottom
draw_sprite_ext(sprite_index, 1, x, y+16, 1, room_height-y, 0, c_white, 1);

