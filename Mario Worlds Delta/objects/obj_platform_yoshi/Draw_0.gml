/// @description Draw the platform

//If the player is riding a yoshi, set the palette
if (global.mount == 1) 
&& (instance_number(obj_yoshi) > 0) {

    pal_swap_set(spr_palette_platform_yoshi, obj_yoshi.colour);
}

//Draw it
draw_sprite(sprite_index, image_index, round(x), round(y));

//Reset shader
pal_swap_reset();

