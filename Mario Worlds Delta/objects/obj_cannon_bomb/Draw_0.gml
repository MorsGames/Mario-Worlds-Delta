/// @description Draw cannon

//Cannon
switch (direct) {

    //Right
    default: draw_sprite_ext(sprite_index, 1, x, y, 1, 1, 0, c_white, 1); break;
    
    //Left
    case (-1): draw_sprite_ext(sprite_index, 3, x, y, 1, 1, 0, c_white, 1); break;
}

//Base
draw_sprite(sprite_index, 8, x, y);

