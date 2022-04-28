/// @description Draw shard

//Set the shader
if (isflashing > 0) {

    pal_swap_set(spr_palette_brick_blue, isflashing);
}

//Draw it
draw_sprite_ext(sprite_index, image_index, round(x), round(y), 1, 1, 0, c_white, 1);

//Reset shader
pal_swap_reset();

