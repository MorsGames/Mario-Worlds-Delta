/// @description Draw the lava

//Inherit event
event_inherited();

//Draw water
draw_sprite_tiled_area_ext(sprite_index, image_index, x, y, x, y, x+sprite_width-1, y+15, c_white, 1);
if (hh > 16) {

    draw_sprite_tiled_area_ext(sprite_index, 0, x, y+16, x, y+16, x+sprite_width-1, y+hh, c_white, 1);
}

