/// @description Draw magikoopa

if (image_index != 0)
    draw_sprite_ext(sprite_index, image_index, round(x), y+1, xscale, 1, 0, c_white, 1);
else {

    draw_set_blend_mode(bm_add);
    draw_sprite_ext(spr_magikoopa_alt, image_index, round(x), y+1, xscale, 1, 0, c_white, image_alpha);
    draw_set_blend_mode(bm_normal);
}

