/// @description Draw smoke and stars

//Draw smoke
draw_sprite(sprite_index, image_index, round(x), round(y));

//Draw stars
if (starstop == 0) {

    draw_sprite(spr_spinstar2, 0, round(x)+starx, round(y)+stary)
    draw_sprite(spr_spinstar2, 0, round(x)+starx, round(y)-stary)
    draw_sprite(spr_spinstar2, 0, round(x)-starx, round(y)+stary)
    draw_sprite(spr_spinstar2, 0, round(x)-starx, round(y)-stary)
}

