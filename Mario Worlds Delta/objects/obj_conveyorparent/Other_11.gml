/// @description Draw the conveyor

//Draw left ledge
draw_sprite_ext(spr_conveyor_ledge_left, image_index, xstart, ystart, 1, 1, 0, c_white, 1);
if (toggle == 1) {

    draw_sprite_ext(spr_conveyor_light, 0, xstart, ystart, 1, 1, 0, c_white, 1);
}

//Draw middle part
draw_sprite_tiled_area_ext(sprite_index, image_index, xstart+16, ystart, x+16, y, x+sprite_width-15, y+15, c_white, 1);

//Draw rightmost ledge
draw_sprite_ext(spr_conveyor_ledge_right, image_index, xstart+sprite_width-16, ystart, 1, 1, 0, c_white, 1);
if (toggle == 1) {

    draw_sprite_ext(spr_conveyor_light, 1, xstart+sprite_width-16, ystart, 1, 1, 0, c_white, 1);
}

