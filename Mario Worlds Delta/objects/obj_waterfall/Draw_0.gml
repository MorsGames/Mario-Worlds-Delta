/// @description Draw the waterfall

draw_sprite_tiled_area_ext(spr_waterfall, image_index, x, y, x, y, x+sprite_width-1, y+15, c_white, image_alpha);
if (sprite_height > 16) {

    draw_sprite_tiled_area_ext(spr_waterfall_bottom, image_index, x, y+16, x, y+16, x+sprite_width-1, y+sprite_height-1, c_white, image_alpha);
}

