/// @description Draw the player

if (pseudomount == 0) {

if (global.powerup == cs_pow_cape) {

    //If not moving vertically
    if (vspeed == 0) {
    
        //If not moving horizontally
        draw_sprite_ext(capespr, anim2, round(x), round(y)+1, image_xscale, 1, 0, c_white, 1);
    }
    
    //Otherwise
    else {
    
        //If moving up
        if (vspeed < 0)
            draw_sprite_ext(spr_cape_spin, image_index, round(x), round(y)+1, image_xscale, 1, 0, c_white, image_alpha);
        else
            draw_sprite_ext(spr_cape_spin, image_index, round(x), round(y)+1, image_xscale, 1, 0, c_white, image_alpha);
    }
}

//Set the palette
player_set_palette(id);

//Draw the player
draw_sprite_ext(sprite_index, image_index, round(x), round(y)+1, image_xscale, 1, 0, c_white, 1);

//Reset shader
pal_swap_reset();

}

if (pseudomount == 1) {

    //Set the shader
    pal_swap_set(spr_palette_yoshi, pseudomountcolour);
    
    //Draw Yoshi
    draw_sprite_ext(sprite_index, image_index, round(x), round(y)+1, image_xscale, 1, 0, c_white, 1);
        
    //Reset shader
    pal_swap_reset();
    
    //Draw the player
    event_user(0);
}

