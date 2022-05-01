/// @description Draw the player

//If the animation has been set.
if (background_exists(back)) {

    //Disable alpha blending.
    gpu_set_blendenable(0);
    
    //Draw the screenshot
    draw_background(back, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));
    
    //Enable alpha blending.
    gpu_set_blendenable(1);
}

//Draw the player
draw_sprite_ext(sprite_index, image_index, round(x), round(y), 1, 1, 0, c_white, 1);

