/// @description Draw tides

//Draw water
draw_sprite_tiled_area_ext(spr_tides, image_index, x+xx, y, x, y, x+room_width-1, y+15, c_white, image_alpha);

//Draw water body
draw_sprite_tiled_area_ext(spr_tides_bottom, image_index, x+xx, y+16, x, y+16, x+room_width-1, room_height-1, c_white, image_alpha);

