/// @description Player Animation (Clear)
/// @param Clear

//Temporary player variables
m = player_ride();

//If the player is not moving
if (obj_player_clear.hspeed != 0)
    f = 0;

//Otherwise, if Yoshi is not licking
else if (obj_player_clear.hspeed == 0)
    f = 3;

//Set up the shader
player_set_palette(obj_player_clear);

//Draw the player
if (m_vis == 1) {

    //Draw the cape behind
    if (global.powerup >= cs_pow_cape) {
        
        if (obj_player_clear.vspeed != 0) {
            
            if (obj_player_clear.vspeed < 0)
                draw_sprite_ext(spr_cape, 0, round(x)-(4*sign(obj_player_clear.image_xscale)), round(y)-8+m_ypos, obj_player_clear.image_xscale, 1, 0, c_white, 1);
            else
                draw_sprite_ext(spr_cape_fall, anim2, round(x)-(4*sign(obj_player_clear.image_xscale)), round(y)-8+m_ypos, obj_player_clear.image_xscale, 1, 0, c_white, 1);
        }
        else {
        
            if (obj_player_clear.hspeed == 0)
                draw_sprite_ext(spr_cape_climb, 1, round(x)-8, round(y)-8, 1, 1, 0, c_white, 1);
            else
                draw_sprite_ext(spr_cape_walk, anim2, round(x)-(4*sign(obj_player_clear.image_xscale)), round(y)-8+m_ypos, obj_player_clear.image_xscale, 1, 0, c_white, 1);
        }
    }

    //Draw the player
    draw_sprite_ext(m, f, round(x)-(4*sign(obj_player_clear.image_xscale)), round(y)-8+m_ypos, obj_player_clear.image_xscale, 1, 0, c_white, 1);
}

//Reset shader
pal_swap_reset();

