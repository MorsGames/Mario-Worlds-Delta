/// @description Draw the player

//If the animation has been set.
if (background_exists(back)) {

    //Disable alpha blending.
    draw_enable_alphablend(0);
    
    //Draw the screenshot
    draw_background(back, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));
    
    //Enable alpha blending.
    draw_enable_alphablend(1);
}

//Draw the cape
if (global.powerup == cs_pow_cape) {

    if (global.mount == 0)
        draw_sprite_ext(capesprite, capeframe, round(x), round(y)+1, image_xscale, 1, 0, c_white, image_alpha);
    else {

        if (riderframe == 0)
            draw_sprite_ext(capesprite, capeframe, round(x-6*sign(image_xscale)), round(y)-8, image_xscale, 1, 0, c_white, image_alpha);
        else
            draw_sprite_ext(capesprite, capeframe, round(x-6*sign(image_xscale)), round(y)-6, image_xscale, 1, 0, c_white, image_alpha);    
    }        
}

//Set the palette
player_set_palette(id);

//Draw the player
if (global.mount == 1) {

    if (image_speed == 0)
        draw_sprite_ext(player_ride(), riderframe, round(x-6*sign(image_xscale)), round(y)-7+m_ypos, image_xscale, 1, 0, c_white, image_alpha);
    else
        draw_sprite_ext(sprite_index, image_index, round(x-6*sign(image_xscale)), round(y)-7+m_ypos, image_xscale, 1, 0, c_white, image_alpha);
}
else
    draw_sprite_ext(sprite_index, image_index, round(x), round(y)+1, image_xscale, 1, 0, c_white, image_alpha);
    
//Reset palette shader
pal_swap_reset();

