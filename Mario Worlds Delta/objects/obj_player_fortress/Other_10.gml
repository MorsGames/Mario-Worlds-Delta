/// @description Player animation on Yoshi

//Set up the shader
player_set_palette(id);

//Draw the cape behind
if (global.powerup == cs_pow_cape) {
    if (vspeed != 0) {
        if (vspeed < 0)
            draw_sprite_ext(spr_cape, 1, round(x)-(4*sign(image_xscale)), round(y)-8+m_ypos, image_xscale, 1, 0, c_white, 1);
        else
            draw_sprite_ext(spr_cape_fall, anim2, round(x)-(4*sign(image_xscale)), round(y)-8+m_ypos, image_xscale, 1, 0, c_white, 1);
    } else {
        if (hspeed == 0)
            draw_sprite_ext(spr_cape, 1, round(x)-4, round(y)-8, 1, 1, 0, c_white, 1);
        else
            draw_sprite_ext(spr_cape_walk, anim2, round(x)-(4*sign(image_xscale)), round(y)-8+m_ypos, image_xscale, 1, 0, c_white, 1);
    }
}

//Draw the player
draw_sprite_ext(m, 0, round(x)-(4*sign(image_xscale)), round(y)-8+m_ypos, image_xscale, 1, 0, c_white, 1);

//Draw the cape in front
if (global.powerup == cs_pow_cape) {
    if (hspeed == 0)
        draw_sprite_ext(spr_cape, 1, round(x)-4, round(y)-8, 1, 1, 0, c_white, 1);
}

//Reset shader
pal_swap_reset();

