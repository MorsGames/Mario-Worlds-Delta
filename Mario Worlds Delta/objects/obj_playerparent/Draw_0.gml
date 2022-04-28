/// @description Draw the player

//Increment stun animation
stun_anim += 0.5;

//If the player is about to squat jump
if (squat_ready == 1)
&& (squat_time mod 4 == 0) 
&& (instance_number(obj_invincibility) == 0) {

    //Draw sprite
    draw_sprite_ext(sprite_index, image_index, round(x), round(y)+1, xscale, 1, 0, c_white, image_alpha);     
    
    //Draw blended sprite
    draw_set_blend_mode(bm_add);
    draw_sprite_ext(sprite_index, image_index, round(x), round(y)+1, xscale, 1, 0, c_white, image_alpha);
    draw_set_blend_mode(bm_normal);      
}

//Otherwise
else {
    
    //Set up palette
    player_set_palette(id);
        
    //Draw the player
    draw_sprite_ext(sprite_index, image_index, round(x), round(y)+1, xscale, 1, angle, c_white, image_alpha);
    
    //Draw stun
    if (stun > 0) {
    
        draw_sprite_ext(spr_shake, stun_anim, x, y, 1, 1, 0, c_white, 1);
    }
    
    //Reset palette
    pal_swap_reset();
}

