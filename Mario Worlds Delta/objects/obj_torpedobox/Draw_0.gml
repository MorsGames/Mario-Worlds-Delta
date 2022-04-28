/// @description Draw torpedo box and glove

//If the glove is showing up
if (gy > 0) {

    //If the glove is holding a torpedo, draw it
    if (ready == 1) {
    
        draw_sprite_ext(spr_torpedoted, 0, round(x)+16, round(y)+16+gy, gx, 1, 0, c_white, 1);
    }
    draw_sprite_ext(sprite_index, 1+gi, round(x), round(y)+gy, 1, 1, 0, c_white, 1);
}

//Draw the box
draw_sprite(sprite_index, 0, round(x), round(y));

