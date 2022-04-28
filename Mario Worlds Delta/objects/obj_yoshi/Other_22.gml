/// @description Player Animation (Door)
/// @param Door

//Temporary player variables
f = 0;
m = player_ride();

//Set up the shader
player_set_palette(obj_player_door);

//Draw the player
if (m_vis == 1) {

    //Draw the cape at the frong
    if (global.powerup >= cs_pow_cape) {
    
        draw_sprite_ext(spr_cape, 0, round(x)-(4*sign(obj_player_door.image_xscale)), round(y)-7+m_ypos, obj_player_door.image_xscale, 1, 0, c_white, 1);
    }    
        
    //Draw the player
    draw_sprite_ext(m, f, round(x)-(4*sign(obj_player_door.image_xscale)), round(y)-7+m_ypos, obj_player_door.image_xscale, 1, 0, c_white, 1);
}

//Reset shader
pal_swap_reset();

