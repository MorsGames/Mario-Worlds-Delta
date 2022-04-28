/// @description Draw panel

//Draw the panel
draw_sprite(sprite_index, image_index, round(x), round(y));

//If the panel is animating faster, draw a lighter version
if (image_speed > 0.2) {

    draw_set_blend_mode(bm_add);
    draw_sprite_ext(sprite_index, image_index, round(x), round(y), 1, 1, 0, c_white, 1);
    draw_set_blend_mode(bm_normal);
}

