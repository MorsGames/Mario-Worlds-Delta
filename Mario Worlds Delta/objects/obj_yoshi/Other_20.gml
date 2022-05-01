/// @description Player Animation (Normal)
/// @param Normal

//Temporary player variables
f = 0;
m = player_ride();

//If Yoshi is licking something
if (licking) {

    //If the 'Up' key is being held or Yoshi is jumping
    if (sprite_index == spr_yoshi_lick)
        f = 0;
    else
        f = 1;
}

//Otherwise, if Yoshi is not licking
else {

    //If the player is crouched down or sliding down a slope
    if (obj_playerparent.crouch)
    || (obj_playerparent.sliding)
    || (crouch_position > 0)
        f = 1;
    else
        f = 0;
}

//Set up the shader
player_set_palette(obj_playerparent);

//Draw the player
if (m_vis == 1) {

    if (obj_playerparent.cleared < 2)
        draw_sprite_ext(m, f, round(x)-(4*sign(obj_playerparent.xscale)), round(y)-8+m_ypos, obj_playerparent.xscale, 1, 0, c_white, obj_playerparent.image_alpha);
    else {
    
        draw_sprite_ext(m, 3, round(x)-(4*sign(obj_playerparent.xscale)), round(y)-8+m_ypos, obj_playerparent.xscale, 1, 0, c_white, obj_playerparent.image_alpha);
        if (obj_playerparent.stun > 0) {
        
            draw_sprite_ext(spr_shake, obj_playerparent.stun_anim, round(x), round(y), 1, 1, 0, c_white, 1);
        }
    }
}

//Reset shader
pal_swap_reset();

