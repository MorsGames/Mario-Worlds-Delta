/// @description Player Animation (Warp)
/// @param Warp

//Temporary player variables
f = 0;
m = player_ride();

//If the player is moving vertically
if (obj_player_warp.vspeed != 0) {

    f = 2;
}
else {

    f = 1;
}

//Set up the shader
player_set_palette(obj_player_warp);

//Draw the player
if (m_vis == 1) {

    //Draw the cape behind
    if (global.powerup >= cs_pow_cape) {
        
        if (obj_player_warp.vspeed != 0)        
            draw_sprite_ext(spr_cape_climb, 1, round(x), round(y)-8, 1, 1, 0, c_white, 1);
        else
            draw_sprite_ext(spr_cape_walk, image_index, round(x)-(4*sign(obj_player_warp.image_xscale)), round(y)-8+m_ypos, obj_player_warp.image_xscale, 1, 0, c_white, 1);
    }

    //Draw the player
    if (obj_player_warp.vspeed == 0)
        draw_sprite_ext(m, f, round(x)-(4*sign(obj_player_warp.image_xscale)), round(y)-8+m_ypos, obj_player_warp.image_xscale, 1, 0, c_white, 1);
    else
        draw_sprite_ext(m, f, round(x), round(y)-8, image_xscale, 1, 0, c_white, 1);
}

//Reset shader
pal_swap_reset();

