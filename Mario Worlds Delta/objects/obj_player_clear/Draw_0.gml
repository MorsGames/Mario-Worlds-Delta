/// @description Draw the player

//Draw the cape
if (global.powerup == cs_pow_cape) {

    //If not moving vertically
    if (vspeed == 0) {
    
        //If not moving horizontally
        if (hspeed == 0)
            draw_sprite_ext(spr_cape_climb, 1, round(x), round(y)+1, image_xscale, 1, 0, c_white, 1);
        else
            draw_sprite_ext(spr_cape_walk, anim, round(x), round(y)+1, image_xscale, 1, 0, c_white, 1);
    }
    
    //Otherwise
    else {
    
        //If moving up
        if (vspeed < 0)
            draw_sprite_ext(spr_cape, anim, round(x), round(y)+1, image_xscale, 1, 0, c_white, 1);
        else
            draw_sprite_ext(spr_cape_fall, anim, round(x), round(y)+1, image_xscale, 1, 0, c_white, 1);            
    }   
}

//Set the palette
player_set_palette(id);

//Draw the player
draw_sprite_ext(sprite_index, image_index, round(x), round(y)+1, image_xscale, 1, 0, c_white, 1);

//Reset shader
pal_swap_reset();

